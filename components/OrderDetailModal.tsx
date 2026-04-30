'use client'
import { useState, useEffect, useCallback } from 'react'
import {
  X, Package, Factory, Calendar, Truck, CreditCard,
  Save, Plus, Trash2, AlertCircle, MessageSquare, Loader2
} from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { Order, OrderStatus } from '@/lib/types'
import { ORDER_STATUSES, STATUS_COLORS } from '@/lib/constants'
import MaterialChecklist from './MaterialChecklist'
import dayjs from 'dayjs'

// ── 타입 ──────────────────────────────────────────────────────
interface WLog {
  id: string
  order_id: string
  log_date: string
  qty: number
  note: string
  created_at: string
}

interface MLog {
  id: string
  order_id: string
  log_date: string
  content: string
  created_at: string
}

interface Props {
  order: Order
  onClose: () => void
  onUpdated: (updated: Order) => void
}

const SB_URL = process.env.NEXT_PUBLIC_SUPABASE_URL!
const SB_KEY = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

const sbHeaders = (extra?: Record<string, string>) => ({
  'apikey': SB_KEY,
  'Authorization': `Bearer ${SB_KEY}`,
  ...extra,
})

// ── 컴포넌트 ──────────────────────────────────────────────────
export default function OrderDetailModal({ order, onClose, onUpdated }: Props) {
  // 기본 정보 상태
  const [status, setStatus] = useState<OrderStatus>(order.status)
  const [materials, setMaterials] = useState<Record<string, boolean>>(order.materials || {})
  const [depositPaid, setDepositPaid] = useState(order.contractDepositPaid)
  const [saving, setSaving] = useState(false)
  const [saved, setSaved] = useState(false)

  // 입고 기록 상태
  const [wlogs, setWlogs] = useState<WLog[]>([])
  const [wLoading, setWLoading] = useState(true)
  const [wDate, setWDate] = useState(dayjs().format('YYYY-MM-DD'))
  const [wQty, setWQty] = useState('')
  const [wNote, setWNote] = useState('')
  const [wAdding, setWAdding] = useState(false)

  // 메모 기록 상태
  const [mlogs, setMlogs] = useState<MLog[]>([])
  const [mLoading, setMLoading] = useState(true)
  const [mDate, setMDate] = useState(dayjs().format('YYYY-MM-DD'))
  const [mText, setMText] = useState('')
  const [mAdding, setMAdding] = useState(false)

  const daysLeft = order.expectedDeliveryDate
    ? dayjs(order.expectedDeliveryDate).diff(dayjs(), 'day')
    : null

  // ── 데이터 로드 (fetch 직접 호출) ───────────────────────────
  const loadWlogs = useCallback(async () => {
    setWLoading(true)
    try {
      const res = await fetch(
        `${SB_URL}/rest/v1/warehouse_logs?order_id=eq.${order.id}&order=log_date.asc,created_at.asc`,
        { headers: sbHeaders() }
      )
      if (res.ok) {
        setWlogs(await res.json())
      } else {
        console.error('warehouse_logs 조회 오류:', await res.text())
      }
    } catch (e) {
      console.error('네트워크 오류:', e)
    }
    setWLoading(false)
  }, [order.id])

  const loadMlogs = useCallback(async () => {
    setMLoading(true)
    try {
      const res = await fetch(
        `${SB_URL}/rest/v1/order_memo_logs?order_id=eq.${order.id}&order=log_date.desc,created_at.desc`,
        { headers: sbHeaders() }
      )
      if (res.ok) {
        setMlogs(await res.json())
      } else {
        console.error('order_memo_logs 조회 오류:', await res.text())
      }
    } catch (e) {
      console.error('네트워크 오류:', e)
    }
    setMLoading(false)
  }, [order.id])

  useEffect(() => {
    loadWlogs()
    loadMlogs()
  }, [loadWlogs, loadMlogs])

  // ── 계산값 ──────────────────────────────────────────────────
  const totalIn = wlogs.reduce((s, l) => s + l.qty, 0)
  const remaining = order.orderQty - totalIn
  const isOver = remaining < 0
  const pct = order.orderQty > 0 ? Math.min(Math.round((totalIn / order.orderQty) * 100), 100) : 0

  // ── 입고 등록 (fetch) ─────────────────────────────────────────
  const handleAddWlog = async () => {
    const qty = parseInt(wQty)
    if (isNaN(qty) || qty <= 0) {
      alert('수량을 올바르게 입력해주세요.')
      return
    }
    setWAdding(true)
    try {
      const res = await fetch(`${SB_URL}/rest/v1/warehouse_logs`, {
        method: 'POST',
        headers: sbHeaders({ 'Content-Type': 'application/json', 'Prefer': 'return=representation' }),
        body: JSON.stringify({
          order_id: order.id,
          log_date: wDate || dayjs().format('YYYY-MM-DD'),
          qty,
          note: wNote.trim(),
        }),
      })
      const responseText = await res.text()
      if (!res.ok) {
        console.error('입고 등록 오류:', responseText)
        alert(`입고 등록 실패: ${responseText}`)
        setWAdding(false)
        return
      }
      const data = JSON.parse(responseText)
      const newLog: WLog = Array.isArray(data) ? data[0] : data
      console.log('입고 등록 성공:', newLog)

      const updated = [...wlogs, newLog].sort((a, b) =>
        a.log_date.localeCompare(b.log_date) || a.created_at.localeCompare(b.created_at)
      )
      setWlogs(updated)
      const newTotal = updated.reduce((s, l) => s + l.qty, 0)

      await fetch(`${SB_URL}/rest/v1/orders?id=eq.${order.id}`, {
        method: 'PATCH',
        headers: sbHeaders({ 'Content-Type': 'application/json' }),
        body: JSON.stringify({ warehouse_qty: newTotal }),
      })

      onUpdated({ ...order, warehouseQty: newTotal })
      setWDate(dayjs().format('YYYY-MM-DD'))
      setWQty('')
      setWNote('')
    } catch (e) {
      console.error('네트워크 오류:', e)
      alert('네트워크 오류가 발생했습니다.')
    }
    setWAdding(false)
  }

  // ── 입고 삭제 (fetch) ─────────────────────────────────────────
  const handleDeleteWlog = async (id: string) => {
    if (!confirm('이 입고 기록을 삭제하시겠습니까?')) return
    const res = await fetch(`${SB_URL}/rest/v1/warehouse_logs?id=eq.${id}`, {
      method: 'DELETE',
      headers: sbHeaders(),
    })
    if (!res.ok) { alert('삭제 실패'); return }
    const updated = wlogs.filter(l => l.id !== id)
    setWlogs(updated)
    const newTotal = updated.reduce((s, l) => s + l.qty, 0)
    await fetch(`${SB_URL}/rest/v1/orders?id=eq.${order.id}`, {
      method: 'PATCH',
      headers: sbHeaders({ 'Content-Type': 'application/json' }),
      body: JSON.stringify({ warehouse_qty: newTotal }),
    })
    onUpdated({ ...order, warehouseQty: newTotal })
  }

  // ── 메모 등록 (fetch) ─────────────────────────────────────────
  const handleAddMlog = async () => {
    if (!mText.trim()) { alert('메모 내용을 입력해주세요.'); return }
    setMAdding(true)
    try {
      const res = await fetch(`${SB_URL}/rest/v1/order_memo_logs`, {
        method: 'POST',
        headers: sbHeaders({ 'Content-Type': 'application/json', 'Prefer': 'return=representation' }),
        body: JSON.stringify({
          order_id: order.id,
          log_date: mDate || dayjs().format('YYYY-MM-DD'),
          content: mText.trim(),
        }),
      })
      const responseText = await res.text()
      if (!res.ok) { alert(`메모 등록 실패: ${responseText}`); setMAdding(false); return }
      const data = JSON.parse(responseText)
      const newMemo: MLog = Array.isArray(data) ? data[0] : data
      console.log('메모 등록 성공:', newMemo)
      setMlogs(prev => [newMemo, ...prev])
      setMDate(dayjs().format('YYYY-MM-DD'))
      setMText('')
    } catch (e) {
      alert('네트워크 오류가 발생했습니다.')
    }
    setMAdding(false)
  }

  // ── 메모 삭제 (fetch) ─────────────────────────────────────────
  const handleDeleteMlog = async (id: string) => {
    const res = await fetch(`${SB_URL}/rest/v1/order_memo_logs?id=eq.${id}`, {
      method: 'DELETE',
      headers: sbHeaders(),
    })
    if (!res.ok) { alert('삭제 실패'); return }
    setMlogs(prev => prev.filter(m => m.id !== id))
  }

  // ── 기본 정보 저장 ───────────────────────────────────────────
  const handleSave = async () => {
    setSaving(true)
    const { error } = await supabase
      .from('orders')
      .update({ status, materials, contract_deposit_paid: depositPaid })
      .eq('id', order.id)
    if (error) { alert(`저장 실패: ${error.message}`); setSaving(false); return }
    setSaving(false)
    setSaved(true)
    setTimeout(() => setSaved(false), 2000)
    onUpdated({ ...order, status, materials, contractDepositPaid: depositPaid })
  }

  // ── 렌더 ────────────────────────────────────────────────────
  return (
    <div
      className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 p-4"
      onClick={onClose}
    >
      <div
        className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[92vh] overflow-y-auto"
        onClick={e => e.stopPropagation()}
      >
        {/* 헤더 */}
        <div className="sticky top-0 bg-white px-6 py-4 border-b border-gray-100 flex items-start justify-between z-10">
          <div className="flex items-center gap-3 flex-1 min-w-0">
            {order.imageUrl
              ? <img src={order.imageUrl} alt={order.productName} className="w-12 h-12 rounded-xl object-cover border border-gray-100 flex-shrink-0" />
              : <div className="w-12 h-12 rounded-xl bg-gray-100 flex items-center justify-center flex-shrink-0"><Package size={18} className="text-gray-400" /></div>
            }
            <div className="min-w-0">
              <p className="text-sm font-bold text-gray-900 leading-snug">{order.productName}</p>
              <p className="text-xs text-gray-400 font-mono">{order.productCode}</p>
              <div className="flex gap-1 mt-1 flex-wrap">
                {order.orderRound && (
                  <span className="bg-gray-100 text-gray-700 text-xs px-2 py-0.5 rounded-full font-bold">{order.orderRound}</span>
                )}
                <span className="bg-gray-100 text-gray-600 text-xs px-2 py-0.5 rounded-full">{order.colorName}</span>
                <span className="bg-gray-100 text-gray-600 text-xs px-2 py-0.5 rounded-full">발주 {order.orderQty.toLocaleString()}개</span>
                <span className={`text-xs px-2 py-0.5 rounded-full border ${STATUS_COLORS[order.status] || ''}`}>{order.status}</span>
              </div>
            </div>
          </div>
          <button onClick={onClose} className="text-gray-400 hover:text-gray-600 ml-3 flex-shrink-0">
            <X size={20} />
          </button>
        </div>

        <div className="p-5 space-y-4">

          {/* 기본 정보 */}
          <div className="grid grid-cols-2 gap-2">
            {[
              { icon: <Factory size={12} />, label: '생산처', value: order.factory },
              { icon: <Truck size={12} />, label: '입고처', value: order.deliveryDestination },
              {
                icon: <Calendar size={12} />, label: '예상납기',
                value: order.expectedDeliveryDate ? `${order.expectedDeliveryDate} (D-${daysLeft}일)` : '-',
                highlight: daysLeft !== null && daysLeft <= 7,
              },
              { icon: <Calendar size={12} />, label: '발주일', value: order.orderDate },
            ].map(({ icon, label, value, highlight }) => (
              <div key={label} className={`rounded-xl p-3 ${highlight ? 'bg-red-50 border border-red-100' : 'bg-gray-50'}`}>
                <p className="text-xs text-gray-400 flex items-center gap-1 mb-1">{icon} {label}</p>
                <p className={`text-sm font-semibold truncate ${highlight ? 'text-red-700' : 'text-gray-800'}`}>{value}</p>
              </div>
            ))}
          </div>

          {/* 계약금 */}
          {order.factoryPaymentType === '계약금선납' && (
            <div className="bg-gray-50 rounded-xl p-3.5">
              <p className="text-xs font-semibold text-gray-500 mb-2 flex items-center gap-1">
                <CreditCard size={12} /> 계약금
              </p>
              <button
                onClick={() => {
                  const nv = !depositPaid
                  setDepositPaid(nv)
                  if (nv && status === '계약금송금대기') setStatus('생산중')
                }}
                className={`flex items-center gap-2 px-3 py-1.5 rounded-lg border text-xs font-medium transition-all ${
                  depositPaid
                    ? 'bg-emerald-50 border-emerald-200 text-emerald-700'
                    : 'bg-amber-50 border-amber-200 text-amber-700'
                }`}
              >
                <span className={`w-3.5 h-3.5 rounded-full border-2 flex items-center justify-center flex-shrink-0 ${depositPaid ? 'bg-emerald-500 border-emerald-500' : 'border-amber-400'}`}>
                  {depositPaid && <span className="text-white text-xs leading-none">✓</span>}
                </span>
                {depositPaid ? '송금완료 (클릭하면 취소)' : '대기중 (클릭하면 완료 처리)'}
              </button>
            </div>
          )}

          {/* ── 입고 현황 ─────────────────────────────────────── */}
          <div className="bg-gray-50 rounded-xl p-4 space-y-3">
            <div className="flex items-center justify-between flex-wrap gap-1">
              <p className="text-xs font-bold text-gray-700">📦 입고 현황</p>
              <div className="flex gap-2 text-xs flex-wrap">
                <span className="text-gray-500">발주 <b className="text-gray-800">{order.orderQty.toLocaleString()}</b>개</span>
                <span className="text-gray-300">|</span>
                <span className="text-gray-500">입고 <b className="text-emerald-600">{totalIn.toLocaleString()}</b>개</span>
                <span className="text-gray-300">|</span>
                <span className={isOver ? 'text-amber-600 font-bold' : 'text-gray-500'}>
                  {isOver ? `오버 ${Math.abs(remaining).toLocaleString()}개` : `잔여 ${remaining.toLocaleString()}개`}
                </span>
              </div>
            </div>

            {/* 진행률 */}
            <div>
              <div className="h-1.5 bg-gray-200 rounded-full overflow-hidden">
                <div
                  className={`h-full rounded-full transition-all ${isOver ? 'bg-amber-400' : pct >= 100 ? 'bg-emerald-500' : 'bg-gray-700'}`}
                  style={{ width: `${pct}%` }}
                />
              </div>
              <div className="flex justify-between text-xs text-gray-400 mt-1">
                <span>{pct}%</span>
                {isOver && <span className="text-amber-500 flex items-center gap-0.5"><AlertCircle size={10} /> 초과</span>}
              </div>
            </div>

            {/* 입고 기록 목록 */}
            {wLoading ? (
              <div className="flex items-center justify-center py-3 gap-2 text-xs text-gray-400">
                <Loader2 size={14} className="animate-spin" /> 로딩 중...
              </div>
            ) : wlogs.length === 0 ? (
              <p className="text-xs text-gray-400 text-center py-2">아직 입고 기록이 없습니다.</p>
            ) : (
              <div className="space-y-1.5">
                {wlogs.map((log, idx) => (
                  <div key={log.id} className="flex items-center gap-2 bg-white rounded-lg px-3 py-2 border border-gray-100 text-xs">
                    <span className="font-bold text-white bg-gray-700 rounded px-1.5 py-0.5 text-xs flex-shrink-0">{idx + 1}차</span>
                    <span className="text-gray-400 w-20 flex-shrink-0">{log.log_date}</span>
                    <span className="font-bold text-gray-800">{log.qty.toLocaleString()}<span className="text-gray-400 font-normal ml-0.5">개</span></span>
                    {log.note && <span className="text-gray-400 flex-1 truncate">· {log.note}</span>}
                    <button onClick={() => handleDeleteWlog(log.id)} className="ml-auto text-gray-300 hover:text-red-400 flex-shrink-0">
                      <Trash2 size={12} />
                    </button>
                  </div>
                ))}
                <div className="flex items-center gap-2 bg-gray-100 rounded-lg px-3 py-2 text-xs font-bold border border-gray-200">
                  <span className="text-gray-500 w-20">합계</span>
                  <span className="text-gray-900">{totalIn.toLocaleString()}개</span>
                  {isOver && <span className="text-amber-600">(+{Math.abs(remaining).toLocaleString()} 초과)</span>}
                </div>
              </div>
            )}

            {/* 새 입고 등록 폼 */}
            <div className="pt-3 border-t border-gray-200">
              <p className="text-xs font-semibold text-gray-500 mb-2">
                + {wlogs.length + 1}차 입고 등록
              </p>
              <div className="flex gap-2 flex-wrap items-center">
                <input
                  type="date"
                  value={wDate}
                  onChange={e => setWDate(e.target.value)}
                  className="border border-gray-200 rounded-lg px-2.5 py-2 text-xs bg-white focus:outline-none focus:ring-1 focus:ring-gray-400"
                />
                <input
                  type="number"
                  min={1}
                  value={wQty}
                  onChange={e => setWQty(e.target.value)}
                  onKeyDown={e => e.key === 'Enter' && handleAddWlog()}
                  placeholder="수량 입력"
                  className="border border-gray-200 rounded-lg px-2.5 py-2 text-xs w-28 bg-white focus:outline-none focus:ring-1 focus:ring-gray-400"
                />
                <input
                  type="text"
                  value={wNote}
                  onChange={e => setWNote(e.target.value)}
                  onKeyDown={e => e.key === 'Enter' && handleAddWlog()}
                  placeholder="메모 (선택)"
                  className="flex-1 min-w-24 border border-gray-200 rounded-lg px-2.5 py-2 text-xs bg-white focus:outline-none focus:ring-1 focus:ring-gray-400"
                />
                <button
                  onClick={handleAddWlog}
                  disabled={wAdding || !wQty}
                  className="flex items-center gap-1 px-4 py-2 rounded-lg text-xs font-semibold text-white bg-gray-800 hover:bg-gray-900 disabled:opacity-40 disabled:cursor-not-allowed flex-shrink-0 transition-all"
                >
                  {wAdding ? <Loader2 size={12} className="animate-spin" /> : <Plus size={12} />}
                  {wAdding ? '등록중...' : '입고 등록'}
                </button>
              </div>
            </div>
          </div>

          {/* 부자재 */}
          <div className="bg-gray-50 rounded-xl p-4">
            <p className="text-xs font-bold text-gray-700 mb-3">🧵 부자재 입고현황</p>
            <MaterialChecklist
              orderId={order.id}
              materials={materials}
              onChange={m => setMaterials(m)}
            />
          </div>

          {/* 상태 변경 */}
          <div>
            <p className="text-xs font-semibold text-gray-500 mb-2">진행 상태</p>
            <div className="flex flex-wrap gap-1.5">
              {ORDER_STATUSES.map(s => (
                <button
                  key={s}
                  onClick={() => setStatus(s)}
                  className={`px-3 py-1.5 rounded-lg text-xs font-medium border transition-all ${
                    status === s
                      ? (STATUS_COLORS[s] || '') + ' ring-1 ring-offset-1 ring-gray-300'
                      : 'bg-white border-gray-200 text-gray-500 hover:border-gray-300'
                  }`}
                >
                  {s}
                </button>
              ))}
            </div>
          </div>

          {/* ── 메모 기록 ──────────────────────────────────────── */}
          <div className="bg-gray-50 rounded-xl p-4 space-y-3">
            <p className="text-xs font-bold text-gray-700 flex items-center gap-1.5">
              <MessageSquare size={13} /> 날짜별 메모 기록
            </p>

            {mLoading ? (
              <div className="flex items-center justify-center py-3 gap-2 text-xs text-gray-400">
                <Loader2 size={14} className="animate-spin" /> 로딩 중...
              </div>
            ) : mlogs.length === 0 ? (
              <p className="text-xs text-gray-400 text-center py-1">기록이 없습니다.</p>
            ) : (
              <div className="space-y-1.5">
                {mlogs.map(m => (
                  <div key={m.id} className="flex gap-2 bg-white rounded-lg px-3 py-2.5 border border-gray-100">
                    <span className="text-xs text-gray-400 flex-shrink-0 w-20 font-medium mt-0.5">{m.log_date}</span>
                    <span className="text-xs text-gray-700 flex-1 leading-relaxed whitespace-pre-wrap">{m.content}</span>
                    <button onClick={() => handleDeleteMlog(m.id)} className="text-gray-300 hover:text-red-400 flex-shrink-0 mt-0.5">
                      <Trash2 size={12} />
                    </button>
                  </div>
                ))}
              </div>
            )}

            <div className="pt-3 border-t border-gray-200 space-y-2">
              <input
                type="date"
                value={mDate}
                onChange={e => setMDate(e.target.value)}
                className="border border-gray-200 rounded-lg px-2.5 py-2 text-xs bg-white focus:outline-none focus:ring-1 focus:ring-gray-400"
              />
              <div className="flex gap-2">
                <textarea
                  value={mText}
                  onChange={e => setMText(e.target.value)}
                  placeholder="현황, 특이사항, 전달사항 등..."
                  rows={3}
                  className="flex-1 border border-gray-200 rounded-lg px-2.5 py-2 text-xs bg-white focus:outline-none focus:ring-1 focus:ring-gray-400 resize-none"
                />
                <button
                  onClick={handleAddMlog}
                  disabled={mAdding || !mText.trim()}
                  className="px-4 rounded-lg text-xs font-semibold text-white bg-gray-800 hover:bg-gray-900 disabled:opacity-40 disabled:cursor-not-allowed flex-shrink-0 flex items-center justify-center transition-all"
                >
                  {mAdding ? <Loader2 size={12} className="animate-spin" /> : <Plus size={14} />}
                </button>
              </div>
            </div>
          </div>

        </div>

        {/* 저장 버튼 */}
        <div className="sticky bottom-0 bg-white px-5 py-3.5 border-t border-gray-100 flex gap-3">
          <button
            onClick={onClose}
            className="flex-1 border border-gray-200 rounded-xl py-2.5 text-sm font-medium text-gray-600 hover:bg-gray-50"
          >
            닫기
          </button>
          <button
            onClick={handleSave}
            disabled={saving}
            className="flex-1 rounded-xl py-2.5 text-sm font-semibold text-white flex items-center justify-center gap-1.5 disabled:opacity-50 bg-gray-900 hover:bg-black transition-all"
          >
            <Save size={14} />
            {saving ? '저장중...' : saved ? '✓ 저장됨' : '저장'}
          </button>
        </div>
      </div>
    </div>
  )
}
