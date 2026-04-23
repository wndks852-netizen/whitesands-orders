'use client'
import { useState } from 'react'
import { X, Package, Factory, Calendar, Truck, CreditCard, Save } from 'lucide-react'
import dayjs from 'dayjs'
import { supabase } from '@/lib/supabase'
import { Order, OrderStatus } from '@/lib/types'
import { ORDER_STATUSES, STATUS_COLORS } from '@/lib/constants'
import MaterialChecklist from './MaterialChecklist'

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

  const daysLeft = order.expectedDeliveryDate
    ? dayjs(order.expectedDeliveryDate).diff(dayjs(), 'day')
    : null

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
        className="bg-white rounded-2xl shadow-2xl w-full max-w-2xl max-h-[90vh] overflow-y-auto"
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
                <span className="bg-purple-50 text-purple-700 text-xs px-2 py-0.5 rounded-full font-medium">
                  {order.colorName}
                </span>
                <span className="bg-blue-50 text-blue-700 text-xs px-2 py-0.5 rounded-full font-medium">
                  {order.orderQty.toLocaleString()}개
                </span>
                <span className={`text-xs px-2 py-0.5 rounded-full border font-medium ${STATUS_COLORS[status] || ''}`}>
                  {status}
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
              value={
                order.expectedDeliveryDate
                  ? `${order.expectedDeliveryDate}${daysLeft !== null ? ` (D-${daysLeft}일)` : ''}`
                  : '-'
              }
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
                  {contractDepositPaid && <span className="text-white text-xs leading-none">✓</span>}
                </span>
                {contractDepositPaid ? '송금완료 (클릭하면 취소)' : '대기중 (클릭하면 완료 처리)'}
              </button>
            </div>
          )}

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

          {/* 특이사항 / 현황 메모 */}
          <div>
            <p className="text-xs font-semibold text-gray-500 mb-2">특이사항 / 현황 메모</p>
            <textarea
              value={memo}
              onChange={e => setMemo(e.target.value)}
              placeholder="특이사항, 진행현황, 전달사항 등을 자유롭게 입력하세요..."
              rows={5}
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

function InfoCard({
  icon,
  label,
  value,
  highlight = false,
}: {
  icon: React.ReactNode
  label: string
  value: string
  highlight?: boolean
}) {
  return (
    <div className={`rounded-xl p-3 ${highlight ? 'bg-red-50 border border-red-200' : 'bg-gray-50'}`}>
      <p className="text-xs text-gray-400 flex items-center gap-1 mb-1">
        {icon} {label}
      </p>
      <p className={`text-sm font-semibold ${highlight ? 'text-red-700' : 'text-gray-800'}`}>{value}</p>
    </div>
  )
}
