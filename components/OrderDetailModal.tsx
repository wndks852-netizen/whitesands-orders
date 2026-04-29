'use client'
import { useState, useEffect } from 'react'
import { X, Package, Factory, Calendar, Truck, CreditCard, Save, Plus, Trash2, AlertCircle, MessageSquare } from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { Order, OrderStatus, WarehouseLog, MemoLog } from '@/lib/types'
import { ORDER_STATUSES, STATUS_COLORS } from '@/lib/constants'
import MaterialChecklist from './MaterialChecklist'
import dayjs from 'dayjs'

interface Props {
  order: Order
  onClose: () => void
  onUpdated: (updated: Order) => void
}

export default function OrderDetailModal({ order, onClose, onUpdated }: Props) {
  const [status, setStatus] = useState<OrderStatus>(order.status)
  const [materials, setMaterials] = useState(order.materials)
  const [contractDepositPaid, setContractDepositPaid] = useState(order.contractDepositPaid)
  const [saving, setSaving] = useState(false)
  const [saved, setSaved] = useState(false)

  const [logs, setLogs] = useState<WarehouseLog[]>([])
  const [logsLoading, setLogsLoading] = useState(true)
  const [newEntry, setNewEntry] = useState({ date: dayjs().format('YYYY-MM-DD'), qty: '', note: '' })
  const [addingLog, setAddingLog] = useState(false)

  const [memoLogs, setMemoLogs] = useState<MemoLog[]>([])
  const [newMemo, setNewMemo] = useState('')
  const [memoDate, setMemoDate] = useState(dayjs().format('YYYY-MM-DD'))
  const [addingMemo, setAddingMemo] = useState(false)

  const daysLeft = order.expectedDeliveryDate
    ? dayjs(order.expectedDeliveryDate).diff(dayjs(), 'day') : null

  useEffect(() => {
    const fetchAll = async () => {
      setLogsLoading(true)
      const [{ data: logData }, { data: memoData }] = await Promise.all([
        supabase.from('warehouse_logs').select('*').eq('order_id', order.id)
          .order('log_date', { ascending: true }).order('created_at', { ascending: true }),
        supabase.from('order_memo_logs').select('*').eq('order_id', order.id)
          .order('log_date', { ascending: false }).order('created_at', { ascending: false }),
      ])
      if (logData) setLogs(logData.map(r => ({
        id: r.id, orderId: r.order_id, logDate: r.log_date,
        qty: r.qty, note: r.note || '', createdAt: r.created_at,
      })))
      if (memoData) setMemoLogs(memoData.map(r => ({
        id: r.id, orderId: r.order_id, logDate: r.log_date,
        content: r.content, createdAt: r.created_at,
      })))
      setLogsLoading(false)
    }
    fetchAll()
  }, [order.id])

  const totalWarehouse = logs.reduce((s, l) => s + l.qty, 0)
  const remaining = order.orderQty - totalWarehouse
  const isOver = remaining < 0
  const pct = order.orderQty > 0 ? Math.round((totalWarehouse / order.orderQty) * 100) : 0

  const addLog = async () => {
    const qty = parseInt(newEntry.qty)
    if (!qty || qty <= 0) return
    setAddingLog(true)
    const { data, error } = await supabase
      .from('warehouse_logs')
      .insert({ order_id: order.id, log_date: newEntry.date || dayjs().format('YYYY-MM-DD'), qty, note: newEntry.note })
      .select().single()
    if (!error && data) {
      const newLog: WarehouseLog = {
        id: data.id, orderId: data.order_id, logDate: data.log_date,
        qty: data.qty, note: data.note || '', createdAt: data.created_at,
      }
      const updatedLogs = [...logs, newLog].sort((a, b) =>
        a.logDate.localeCompare(b.logDate) || (a.createdAt || '').localeCompare(b.createdAt || ''))
      setLogs(updatedLogs)
      const newTotal = updatedLogs.reduce((s, l) => s + l.qty, 0)
      await supabase.from('orders').update({ warehouse_qty: newTotal }).eq('id', order.id)
      onUpdated({ ...order, warehouseQty: newTotal })
      setNewEntry({ date: dayjs().format('YYYY-MM-DD'), qty: '', note: '' })
    }
    setAddingLog(false)
  }

  const deleteLog = async (logId: string) => {
    if (!confirm('이 입고 기록을 삭제하시겠습니까?')) return
    await supabase.from('warehouse_logs').delete().eq('id', logId)
    const updatedLogs = logs.filter(l => l.id !== logId)
    setLogs(updatedLogs)
    const newTotal = updatedLogs.reduce((s, l) => s + l.qty, 0)
    await supabase.from('orders').update({ warehouse_qty: newTotal }).eq('id', order.id)
    onUpdated({ ...order, warehouseQty: newTotal })
  }

  const addMemo = async () => {
    if (!newMemo.trim()) return
    setAddingMemo(true)
    const { data, error } = await supabase
      .from('order_memo_logs')
      .insert({ order_id: order.id, log_date: memoDate || dayjs().format('YYYY-MM-DD'), content: newMemo.trim() })
      .select().single()
    if (!error && data) {
      setMemoLogs(prev => [{ id: data.id, orderId: data.order_id, logDate: data.log_date, content: data.content, createdAt: data.created_at }, ...prev])
      setNewMemo('')
      setMemoDate(dayjs().format('YYYY-MM-DD'))
    }
    setAddingMemo(false)
  }

  const deleteMemo = async (memoId: string) => {
    await supabase.from('order_memo_logs').delete().eq('id', memoId)
    setMemoLogs(prev => prev.filter(m => m.id !== memoId))
  }

  const handleSave = async () => {
    setSaving(true)
    await supabase.from('orders').update({ status, materials, contract_deposit_paid: contractDepositPaid }).eq('id', order.id)
    setSaving(false); setSaved(true); setTimeout(() => setSaved(false), 2000)
    onUpdated({ ...order, status, materials, contractDepositPaid })
  }

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40 p-4" onClick={onClose}>
      <div className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[92vh] overflow-y-auto" onClick={e => e.stopPropagation()}>

        {/* 헤더 */}
        <div className="sticky top-0 bg-white px-6 py-4 border-b border-gray-100 flex justify-between items-start z-10">
          <div className="flex items-center gap-3 flex-1 min-w-0">
            {order.imageUrl
              ? <img src={order.imageUrl} alt={order.productName} className="w-14 h-14 rounded-xl object-cover border border-gray-100 flex-shrink-0" />
              : <div className="w-14 h-14 rounded-xl bg-gray-100 flex items-center justify-center flex-shrink-0"><Package size={20} className="text-gray-400" /></div>
            }
            <div className="min-w-0">
              <h2 className="text-sm font-bold text-gray-900 leading-snug">{order.productName}</h2>
              <p className="text-xs text-gray-400 font-mono mt-0.5">{order.productCode}</p>
              <div className="flex gap-1.5 mt-1 flex-wrap">
                {order.orderRound && <span className="bg-gray-100 text-gray-700 text-xs px-2 py-0.5 rounded-full font-bold">{order.orderRound}</span>}
                <span className="bg-gray-100 text-gray-600 text-xs px-2 py-0.5 rounded-full">{order.colorName}</span>
                <span className="bg-gray-100 text-gray-600 text-xs px-2 py-0.5 rounded-full">발주 {order.orderQty.toLocaleString()}개</span>
                <span className={`text-xs px-2 py-0.5 rounded-full border font-medium ${STATUS_COLORS[order.status] || ''}`}>{order.status}</span>
              </div>
            </div>
          </div>
          <button onClick={onClose} className="ml-3 text-gray-400 hover:text-gray-600"><X size={20} /></button>
        </div>

        <div className="p-5 space-y-4">
          {/* 기본 정보 */}
          <div className="grid grid-cols-2 gap-2">
            {[
              { icon: <Factory size={13}/>, label: '생산처', value: order.factory },
              { icon: <Truck size={13}/>, label: '입고처', value: order.deliveryDestination },
              { icon: <Calendar size={13}/>, label: '예상납기', value: order.expectedDeliveryDate ? `${order.expectedDeliveryDate} (D-${daysLeft}일)` : '-', highlight: daysLeft !== null && daysLeft <= 7 },
              { icon: <Calendar size={13}/>, label: '발주일', value: order.orderDate },
            ].map(({ icon, label, value, highlight }) => (
              <div key={label} className={`rounded-xl p-3 ${highlight ? 'bg-red-50 border border-red-100' : 'bg-gray-50'}`}>
                <p className="text-xs text-gray-400 flex items-center gap-1 mb-1">{icon} {label}</p>
                <p className={`text-sm font-semibold ${highlight ? 'text-red-700' : 'text-gray-800'}`}>{value}</p>
              </div>
            ))}
          </div>

          {/* 계약금 */}
          {order.factoryPaymentType === '계약금선납' && (
            <div className="bg-gray-50 rounded-xl p-3.5">
              <p className="text-xs font-semibold text-gray-500 mb-2 flex items-center gap-1"><CreditCard size={12}/> 계약금</p>
              <button
                onClick={() => {
                  const nv = !contractDepositPaid
                  setContractDepositPaid(nv)
                  if (nv && status === '계약금송금대기') setStatus('생산중')
                }}
                className={`flex items-center gap-2 px-3 py-1.5 rounded-lg border text-xs font-medium transition-all ${contractDepositPaid ? 'bg-green-50 border-green-200 text-green-700' : 'bg-amber-50 border-amber-200 text-amber-700'}`}>
                <span className={`w-3.5 h-3.5 rounded-full border-2 flex items-center justify-center ${contractDepositPaid ? 'bg-green-500 border-green-500' : 'border-amber-400'}`}>
                  {contractDepositPaid && <span className="text-white text-xs leading-none">✓</span>}
                </span>
                {contractDepositPaid ? '송금완료 (클릭하면 취소)' : '대기중 (클릭하면 완료 처리)'}
              </button>
            </div>
          )}

          {/* 입고 현황 */}
          <div className="bg-gray-50 rounded-xl p-4 space-y-3">
            <div className="flex items-center justify-between flex-wrap gap-1">
              <p className="text-xs font-bold text-gray-700">입고 현황</p>
              <div className="flex gap-3 text-xs">
                <span className="text-gray-500">발주 <span className="font-bold text-gray-800">{order.orderQty.toLocaleString()}</span>개</span>
                <span className="text-gray-300">|</span>
                <span className="text-gray-500">입고 <span className="font-bold text-emerald-600">{totalWarehouse.toLocaleString()}</span>개</span>
                <span className="text-gray-300">|</span>
                <span className={isOver ? 'text-amber-600 font-bold' : 'text-gray-500'}>
                  {isOver ? `오버 ${Math.abs(remaining).toLocaleString()}개` : `잔여 ${remaining.toLocaleString()}개`}
                </span>
              </div>
            </div>
            <div>
              <div className="h-1.5 bg-gray-200 rounded-full overflow-hidden">
                <div
                  className={`h-full rounded-full transition-all ${isOver ? 'bg-amber-400' : pct >= 100 ? 'bg-emerald-500' : 'bg-gray-700'}`}
                  style={{ width: `${Math.min(pct, 100)}%` }}
                />
              </div>
              <div className="flex justify-between text-xs text-gray-400 mt-1">
                <span>{pct}% 입고</span>
                {isOver && <span className="text-amber-500 flex items-center gap-0.5"><AlertCircle size={10}/> 초과</span>}
              </div>
            </div>

            {logsLoading ? (
              <p className="text-xs text-gray-400 text-center py-2">로딩 중...</p>
            ) : logs.length === 0 ? (
              <p className="text-xs text-gray-400 text-center py-2">입고 기록이 없습니다.</p>
            ) : (
              <div className="space-y-1.5">
                {logs.map((log, idx) => (
                  <div key={log.id} className="flex items-center gap-2 bg-white rounded-lg px-3 py-2 border border-gray-100 text-xs">
                    <span className="font-bold text-white bg-gray-700 rounded px-1.5 py-0.5 flex-shrink-0 text-xs">{idx + 1}차</span>
                    <span className="text-gray-400 flex-shrink-0 w-20">{log.logDate}</span>
                    <span className="font-bold text-gray-800">{log.qty.toLocaleString()}<span className="text-gray-400 font-normal ml-0.5">개</span></span>
                    {log.note && <span className="text-gray-400 flex-1 truncate">· {log.note}</span>}
                    <button onClick={() => deleteLog(log.id)} className="ml-auto text-gray-300 hover:text-red-400 flex-shrink-0"><Trash2 size={12}/></button>
                  </div>
                ))}
                <div className="flex items-center gap-2 bg-gray-100 rounded-lg px-3 py-2 text-xs font-bold border border-gray-200">
                  <span className="text-gray-500 w-20">합계</span>
                  <span className="text-gray-900">{totalWarehouse.toLocaleString()}개</span>
                  {isOver && <span className="text-amber-600 font-medium">(+{Math.abs(remaining).toLocaleString()} 초과)</span>}
                </div>
              </div>
            )}

            <div className="pt-2 border-t border-gray-200">
              <p className="text-xs font-semibold text-gray-500 mb-2">+ {logs.length + 1}차 입고 등록</p>
              <div className="flex gap-2 flex-wrap">
                <input type="date" value={newEntry.date} onChange={e => setNewEntry(p => ({ ...p, date: e.target.value }))}
                  className="border border-gray-200 rounded-lg px-2.5 py-1.5 text-xs focus:outline-none focus:ring-1 focus:ring-gray-400 bg-white" />
                <input type="number" min={1} value={newEntry.qty} onChange={e => setNewEntry(p => ({ ...p, qty: e.target.value }))}
                  placeholder="수량" className="border border-gray-200 rounded-lg px-2.5 py-1.5 text-xs w-24 focus:outline-none focus:ring-1 focus:ring-gray-400 bg-white" />
                <input value={newEntry.note} onChange={e => setNewEntry(p => ({ ...p, note: e.target.value }))}
                  placeholder="메모 (선택)" className="flex-1 min-w-24 border border-gray-200 rounded-lg px-2.5 py-1.5 text-xs focus:outline-none focus:ring-1 focus:ring-gray-400 bg-white" />
                <button onClick={addLog} disabled={addingLog || !newEntry.qty}
                  className="flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-semibold text-white bg-gray-800 hover:bg-gray-900 disabled:opacity-40">
                  <Plus size={12}/>{addingLog ? '등록중...' : '입고 등록'}
                </button>
              </div>
            </div>
          </div>

          {/* 부자재 */}
          <div className="bg-gray-50 rounded-xl p-4">
            <p className="text-xs font-bold text-gray-700 mb-3">부자재 입고현황</p>
            <MaterialChecklist orderId={order.id} materials={materials} onChange={m => setMaterials(m)} />
          </div>

          {/* 상태 변경 */}
          <div>
            <p className="text-xs font-semibold text-gray-500 mb-2">진행 상태</p>
            <div className="flex flex-wrap gap-1.5">
              {ORDER_STATUSES.map(s => (
                <button key={s} onClick={() => setStatus(s)}
                  className={`px-3 py-1.5 rounded-lg text-xs font-medium border transition-all ${status === s ? (STATUS_COLORS[s] || '') + ' ring-1 ring-offset-1 ring-gray-300' : 'bg-white border-gray-200 text-gray-500 hover:border-gray-300'}`}>
                  {s}
                </button>
              ))}
            </div>
          </div>

          {/* 메모 로그 */}
          <div className="bg-gray-50 rounded-xl p-4 space-y-3">
            <p className="text-xs font-bold text-gray-700 flex items-center gap-1.5"><MessageSquare size={13}/> 날짜별 메모 기록</p>
            {memoLogs.length === 0 ? (
              <p className="text-xs text-gray-400 text-center py-1">기록이 없습니다.</p>
            ) : (
              <div className="space-y-1.5">
                {memoLogs.map(m => (
                  <div key={m.id} className="flex gap-2 bg-white rounded-lg px-3 py-2.5 border border-gray-100">
                    <span className="text-xs text-gray-400 flex-shrink-0 w-20 mt-0.5 font-medium">{m.logDate}</span>
                    <span className="text-xs text-gray-700 flex-1 leading-relaxed whitespace-pre-wrap">{m.content}</span>
                    <button onClick={() => deleteMemo(m.id)} className="text-gray-300 hover:text-red-400 flex-shrink-0 mt-0.5"><Trash2 size={12}/></button>
                  </div>
                ))}
              </div>
            )}
            <div className="pt-2 border-t border-gray-200 space-y-2">
              <input type="date" value={memoDate} onChange={e => setMemoDate(e.target.value)}
                className="border border-gray-200 rounded-lg px-2.5 py-1.5 text-xs focus:outline-none focus:ring-1 focus:ring-gray-400 bg-white" />
              <div className="flex gap-2">
                <textarea value={newMemo} onChange={e => setNewMemo(e.target.value)}
                  placeholder="현황, 특이사항, 전달사항 등..." rows={2}
                  className="flex-1 border border-gray-200 rounded-lg px-2.5 py-1.5 text-xs focus:outline-none focus:ring-1 focus:ring-gray-400 bg-white resize-none" />
                <button onClick={addMemo} disabled={addingMemo || !newMemo.trim()}
                  className="px-3 rounded-lg text-xs font-semibold text-white bg-gray-800 hover:bg-gray-900 disabled:opacity-40 flex-shrink-0">
                  <Plus size={12} className="mx-auto"/>
                </button>
              </div>
            </div>
          </div>
        </div>

        {/* 저장 버튼 */}
        <div className="sticky bottom-0 bg-white px-5 py-3.5 border-t border-gray-100 flex gap-3">
          <button onClick={onClose} className="flex-1 border border-gray-200 rounded-xl py-2.5 text-sm font-medium text-gray-600 hover:bg-gray-50">닫기</button>
          <button onClick={handleSave} disabled={saving}
            className="flex-1 rounded-xl py-2.5 text-sm font-semibold text-white flex items-center justify-center gap-1.5 disabled:opacity-50 bg-gray-900 hover:bg-black">
            <Save size={14}/>{saving ? '저장중...' : saved ? '✓ 저장됨' : '저장'}
          </button>
        </div>
      </div>
    </div>
  )
}
