'use client'
import { useState, useEffect } from 'react'
import { X, Package, Factory, Calendar, Truck, CreditCard, Save, Plus, Trash2, AlertCircle } from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { Order, OrderStatus, WarehouseLog } from '@/lib/types'
import { ORDER_STATUSES, STATUS_COLORS } from '@/lib/constants'
import MaterialChecklist from './MaterialChecklist'
import dayjs from 'dayjs'

interface Props {
  order: Order
  onClose: () => void
  onUpdated: (updated: Order) => void
}

export default function OrderDetailModal({ order, onClose, onUpdated }: Props) {
  const [memo, setMemo] = useState(order.memo || '')
  const [status, setStatus] = useState<OrderStatus>(order.status)
  const [materials, setMaterials] = useState(order.materials)
  const [contractDepositPaid, setContractDepositPaid] = useState(order.contractDepositPaid)
  const [saving, setSaving] = useState(false)
  const [saved, setSaved] = useState(false)

  // 입고 기록
  const [logs, setLogs] = useState<WarehouseLog[]>([])
  const [logsLoading, setLogsLoading] = useState(true)
  const [newEntry, setNewEntry] = useState({ date: dayjs().format('YYYY-MM-DD'), qty: '', note: '' })
  const [addingLog, setAddingLog] = useState(false)

  const daysLeft = order.expectedDeliveryDate
    ? dayjs(order.expectedDeliveryDate).diff(dayjs(), 'day')
    : null

  useEffect(() => {
    const fetchLogs = async () => {
      setLogsLoading(true)
      const { data } = await supabase
        .from('warehouse_logs')
        .select('*')
        .eq('order_id', order.id)
        .order('log_date', { ascending: true })
        .order('created_at', { ascending: true })
      if (data) {
        setLogs(data.map(r => ({
          id: r.id,
          orderId: r.order_id,
          logDate: r.log_date,
          qty: r.qty,
          note: r.note || '',
          createdAt: r.created_at,
        })))
      }
      setLogsLoading(false)
    }
    fetchLogs()
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
      .insert({
        order_id: order.id,
        log_date: newEntry.date || dayjs().format('YYYY-MM-DD'),
        qty,
        note: newEntry.note,
      })
      .select()
      .single()
    if (!error && data) {
      const newLog: WarehouseLog = {
        id: data.id,
        orderId: data.order_id,
        logDate: data.log_date,
        qty: data.qty,
        note: data.note || '',
        createdAt: data.created_at,
      }
      const updatedLogs = [...logs, newLog]
      setLogs(updatedLogs)
      const newTotal = updatedLogs.reduce((s, l) => s + l.qty, 0)
      // DB 트리거가 warehouse_qty 자동 업데이트 → UI만 갱신
      onUpdated({ ...order, warehouseQty: newTotal })
    }
    setNewEntry({ date: dayjs().format('YYYY-MM-DD'), qty: '', note: '' })
    setAddingLog(false)
  }

  const deleteLog = async (logId: string) => {
    if (!confirm('이 입고 기록을 삭제하시겠습니까?')) return
    await supabase.from('warehouse_logs').delete().eq('id', logId)
    const updatedLogs = logs.filter(l => l.id !== logId)
    setLogs(updatedLogs)
    const newTotal = updatedLogs.reduce((s, l) => s + l.qty, 0)
    // DB 트리거가 warehouse_qty 자동 업데이트 → UI만 갱신
    onUpdated({ ...order, warehouseQty: newTotal })
  }

  const handleSave = async () => {
    setSaving(true)
    await supabase.from('orders').update({
      memo,
      status,
      materials,
      contract_deposit_paid: contractDepositPaid,
    }).eq('id', order.id)
    setSaving(false)
    setSaved(true)
    setTimeout(() => setSaved(false), 2000)
    onUpdated({ ...order, memo, status, materials, contractDepositPaid })
  }

  const toggleDeposit = () => {
    const newVal = !contractDepositPaid
    setContractDepositPaid(newVal)
    if (newVal && status === '계약금송금대기') setStatus('생산중')
  }

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 p-4" onClick={onClose}>
      <div
        className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[92vh] overflow-y-auto"
        onClick={e => e.stopPropagation()}
      >
        {/* 헤더 */}
        <div className="sticky top-0 bg-white px-6 py-4 border-b border-gray-100 flex justify-between items-start z-10">
          <div className="flex items-center gap-3 flex-1 min-w-0">
            {order.imageUrl ? (
              <img src={order.imageUrl} alt={order.productName}
                className="w-14 h-14 rounded-xl object-cover border border-gray-100 flex-shrink-0" />
            ) : (
              <div className="w-14 h-14 rounded-xl bg-gray-100 flex items-center justify-center flex-shrink-0">
                <Package size={20} className="text-gray-400" />
              </div>
            )}
            <div className="min-w-0">
              <h2 className="text-base font-bold text-gray-800 leading-snug">{order.productName}</h2>
              <p className="text-xs text-gray-400 font-mono mt-0.5">{order.productCode}</p>
              <div className="flex gap-1.5 mt-1 flex-wrap">
                {order.orderRound && (
                  <span className="bg-indigo-50 text-indigo-700 text-xs px-2 py-0.5 rounded-full font-bold">
                    {order.orderRound}
                  </span>
                )}
                <span className="bg-purple-50 text-purple-700 text-xs px-2 py-0.5 rounded-full font-medium">
                  {order.colorName}
                </span>
                <span className="bg-blue-50 text-blue-700 text-xs px-2 py-0.5 rounded-full font-medium">
                  발주 {order.orderQty.toLocaleString()}개
                </span>
                <span className={`text-xs px-2 py-0.5 rounded-full border font-medium ${STATUS_COLORS[order.status] || ''}`}>
                  {order.status}
                </span>
              </div>
            </div>
          </div>
          <button onClick={onClose} className="ml-3 flex-shrink-0 text-gray-400 hover:text-gray-600">
            <X size={20} />
          </button>
        </div>

        <div className="p-6 space-y-5">
          {/* 기본 정보 그리드 */}
          <div className="grid grid-cols-2 gap-3">
            <InfoCard icon={<Factory size={14} />} label="생산처" value={order.factory} />
            <InfoCard icon={<Truck size={14} />} label="입고처" value={order.deliveryDestination} />
            <InfoCard
              icon={<Calendar size={14} />}
              label="예상납기"
              value={order.expectedDeliveryDate
                ? `${order.expectedDeliveryDate}${daysLeft !== null ? ` (D-${daysLeft}일)` : ''}`
                : '-'}
              highlight={daysLeft !== null && daysLeft <= 7}
            />
            <InfoCard icon={<Calendar size={14} />} label="발주일" value={order.orderDate} />
          </div>

          {/* 계약금 */}
          {order.factoryPaymentType === '계약금선납' && (
            <div className="bg-gray-50 rounded-xl p-4">
              <p className="text-xs font-semibold text-gray-500 mb-2 flex items-center gap-1">
                <CreditCard size={13} /> 계약금 송금 현황
              </p>
              <button
                onClick={toggleDeposit}
                className={`flex items-center gap-2 px-4 py-2 rounded-xl border text-sm font-medium transition-all ${
                  contractDepositPaid
                    ? 'bg-green-50 border-green-300 text-green-700 hover:bg-green-100'
                    : 'bg-orange-50 border-orange-300 text-orange-700 hover:bg-orange-100'
                }`}
              >
                <span className={`w-4 h-4 rounded-full border-2 flex items-center justify-center flex-shrink-0 ${
                  contractDepositPaid ? 'bg-green-500 border-green-500' : 'border-orange-400'
                }`}>
                  {contractDepositPaid && <span className="text-white text-xs">✓</span>}
                </span>
                {contractDepositPaid ? '송금완료 (클릭하면 취소)' : '대기중 (클릭하면 완료 처리)'}
              </button>
            </div>
          )}

          {/* 입고 현황 섹션 */}
          <div className="bg-gray-50 rounded-xl p-4 space-y-3">
            <div className="flex items-center justify-between flex-wrap gap-2">
              <p className="text-xs font-semibold text-gray-600">📦 입고 현황</p>
              <div className="flex gap-3 text-xs flex-wrap">
                <span className="text-gray-500">
                  발주 <span className="font-bold text-gray-700">{order.orderQty.toLocaleString()}</span>개
                </span>
                <span className="text-gray-400">|</span>
                <span className="text-gray-500">
                  입고 <span className="font-bold text-green-600">{totalWarehouse.toLocaleString()}</span>개
                </span>
                <span className="text-gray-400">|</span>
                <span className={isOver ? 'text-orange-500 font-bold' : 'text-gray-500'}>
                  {isOver
                    ? `오버 ${Math.abs(remaining).toLocaleString()}개`
                    : `잔여 ${remaining.toLocaleString()}개`}
                </span>
              </div>
            </div>

            {/* 진행률 바 */}
            <div>
              <div className="h-2.5 bg-gray-200 rounded-full overflow-hidden">
                <div
                  className={`h-full rounded-full transition-all ${
                    isOver ? 'bg-orange-400' : pct >= 100 ? 'bg-green-500' : 'bg-blue-500'
                  }`}
                  style={{ width: `${Math.min(pct, 100)}%` }}
                />
              </div>
              <div className="flex justify-between text-xs text-gray-400 mt-1">
                <span>{pct}% 입고</span>
                {isOver && (
                  <span className="text-orange-500 flex items-center gap-1">
                    <AlertCircle size={10} /> 발주수량 초과
                  </span>
                )}
              </div>
            </div>

            {/* 입고 기록 목록 */}
            {logsLoading ? (
              <p className="text-xs text-gray-400 text-center py-2">로딩 중...</p>
            ) : logs.length === 0 ? (
              <p className="text-xs text-gray-400 text-center py-2">아직 입고 기록이 없습니다.</p>
            ) : (
              <div className="space-y-1.5">
                {logs.map((log, idx) => (
                  <div key={log.id} className="flex items-center gap-2 bg-white rounded-xl px-3 py-2.5 border border-gray-100">
                    <span className="text-xs font-bold text-white bg-green-500 rounded-lg px-2 py-0.5 flex-shrink-0">
                      {idx + 1}차
                    </span>
                    <span className="text-xs text-gray-500 flex-shrink-0 w-24">{log.logDate}</span>
                    <span className="text-sm font-bold text-gray-800 flex-shrink-0">
                      {log.qty.toLocaleString()}
                      <span className="text-xs text-gray-400 font-normal ml-0.5">개</span>
                    </span>
                    {log.note && (
                      <span className="text-xs text-gray-400 flex-1 truncate">· {log.note}</span>
                    )}
                    <button
                      onClick={() => deleteLog(log.id)}
                      className="ml-auto text-red-300 hover:text-red-500 flex-shrink-0 transition-colors"
                    >
                      <Trash2 size={13} />
                    </button>
                  </div>
                ))}
                <div className="flex items-center gap-2 bg-gray-100 rounded-xl px-3 py-2 border border-gray-200 mt-1">
                  <span className="text-xs font-bold text-gray-500 flex-shrink-0 w-14">합계</span>
                  <span className="text-sm font-bold" style={{ color: '#1B2A4A' }}>
                    {totalWarehouse.toLocaleString()}
                    <span className="text-xs text-gray-400 font-normal ml-0.5">개</span>
                  </span>
                  {isOver && (
                    <span className="text-xs text-orange-500 font-medium ml-1">
                      (발주 {order.orderQty.toLocaleString()}개 대비 +{Math.abs(remaining).toLocaleString()}개 초과)
                    </span>
                  )}
                </div>
              </div>
            )}

            {/* 새 입고 등록 폼 */}
            <div className="border-t border-gray-200 pt-3">
              <p className="text-xs font-semibold text-gray-500 mb-2">
                + {logs.length + 1}차 입고 등록
                <span className="text-gray-400 font-normal ml-1">(발주수량 초과도 가능)</span>
              </p>
              <div className="flex gap-2 flex-wrap">
                <input
                  type="date"
                  value={newEntry.date}
                  onChange={e => setNewEntry(p => ({ ...p, date: e.target.value }))}
                  className="border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 bg-white"
                />
                <input
                  type="number"
                  min={1}
                  value={newEntry.qty}
                  onChange={e => setNewEntry(p => ({ ...p, qty: e.target.value }))}
                  placeholder="수량 입력"
                  className="border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 w-32 bg-white"
                />
                <input
                  type="text"
                  value={newEntry.note}
                  onChange={e => setNewEntry(p => ({ ...p, note: e.target.value }))}
                  placeholder="메모 (선택)"
                  className="flex-1 min-w-28 border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 bg-white"
                />
                <button
                  onClick={addLog}
                  disabled={addingLog || !newEntry.qty}
                  className="flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-semibold text-white disabled:opacity-40 transition-opacity hover:opacity-90 flex-shrink-0"
                  style={{ backgroundColor: '#1B2A4A' }}
                >
                  <Plus size={14} />
                  {addingLog ? '등록 중...' : '입고 등록'}
                </button>
              </div>
            </div>
          </div>

          {/* 부자재 */}
          <div className="bg-gray-50 rounded-xl p-4">
            <p className="text-xs font-semibold text-gray-500 mb-3">부자재 입고현황</p>
            <MaterialChecklist
              orderId={order.id}
              materials={materials}
              onChange={m => setMaterials(m)}
            />
          </div>

          {/* 상태 변경 */}
          <div>
            <p className="text-xs font-semibold text-gray-500 mb-2">진행 상태</p>
            <div className="flex flex-wrap gap-2">
              {ORDER_STATUSES.map(s => (
                <button
                  key={s}
                  onClick={() => setStatus(s)}
                  className={`px-3 py-1.5 rounded-xl text-xs font-medium border transition-all ${
                    status === s
                      ? (STATUS_COLORS[s] || '') + ' ring-2 ring-offset-1 ring-blue-300'
                      : 'bg-white border-gray-200 text-gray-500 hover:border-gray-300'
                  }`}
                >
                  {s}
                </button>
              ))}
            </div>
          </div>

          {/* 메모 */}
          <div>
            <p className="text-xs font-semibold text-gray-500 mb-2">특이사항 / 현황 메모</p>
            <textarea
              value={memo}
              onChange={e => setMemo(e.target.value)}
              placeholder="특이사항, 진행현황, 전달사항 등을 자유롭게 입력하세요..."
              rows={4}
              className="w-full border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 resize-none placeholder:text-gray-300 leading-relaxed"
            />
            <p className="text-xs text-gray-400 mt-1 text-right">{memo.length}자</p>
          </div>
        </div>

        {/* 저장 버튼 */}
        <div className="sticky bottom-0 bg-white px-6 py-4 border-t border-gray-100 flex gap-3">
          <button onClick={onClose}
            className="flex-1 border border-gray-200 rounded-xl py-3 text-sm font-medium text-gray-600 hover:bg-gray-50">
            닫기
          </button>
          <button
            onClick={handleSave}
            disabled={saving}
            className="flex-1 rounded-xl py-3 text-sm font-semibold text-white flex items-center justify-center gap-2 disabled:opacity-50 transition-opacity hover:opacity-90"
            style={{ backgroundColor: '#1B2A4A' }}
          >
            <Save size={15} />
            {saving ? '저장 중...' : saved ? '✓ 저장됨' : '저장'}
          </button>
        </div>
      </div>
    </div>
  )
}

function InfoCard({ icon, label, value, highlight = false }: {
  icon: React.ReactNode
  label: string
  value: string
  highlight?: boolean
}) {
  return (
    <div className={`rounded-xl p-3 ${highlight ? 'bg-red-50 border border-red-200' : 'bg-gray-50'}`}>
      <p className="text-xs text-gray-400 flex items-center gap-1 mb-1">{icon} {label}</p>
      <p className={`text-sm font-semibold ${highlight ? 'text-red-700' : 'text-gray-800'}`}>{value}</p>
    </div>
  )
}
