'use client'
import { useState } from 'react'
import { Package, Factory, Calendar, Truck, CreditCard, ChevronDown, ChevronUp, MessageSquare } from 'lucide-react'
import dayjs from 'dayjs'
import { supabase } from '@/lib/supabase'
import { Order, OrderStatus } from '@/lib/types'
import { ORDER_STATUSES, STATUS_COLORS } from '@/lib/constants'
import MaterialChecklist from './MaterialChecklist'

interface Props {
  order: Order
  onUpdate: (id: string, updates: Partial<Order>) => void
}

export default function OrderCard({ order, onUpdate }: Props) {
  const [expanded, setExpanded] = useState(false)

  const daysLeft = order.expectedDeliveryDate
    ? dayjs(order.expectedDeliveryDate).diff(dayjs(), 'day')
    : null

  const getDaysBadge = () => {
    if (daysLeft === null) return null
    const cls =
      daysLeft < 0   ? 'bg-red-200 text-red-800' :
      daysLeft <= 7  ? 'bg-red-100 text-red-700' :
      daysLeft <= 14 ? 'bg-orange-100 text-orange-700' :
                       'bg-gray-100 text-gray-500'
    const label = daysLeft < 0 ? `D+${Math.abs(daysLeft)}` : `D-${daysLeft}`
    return <span className={`text-xs font-bold px-1.5 py-0.5 rounded ${cls}`}>{label}</span>
  }

  const allMaterialsDone = Object.values(order.materials).every(Boolean)
  const materialsDoneCount = Object.values(order.materials).filter(Boolean).length
  const materialsTotal = Object.keys(order.materials).length

  const updateStatus = async (status: OrderStatus) => {
    onUpdate(order.id, { status })
    await supabase.from('orders').update({ status }).eq('id', order.id)
  }

  const updateDepositPaid = async () => {
    onUpdate(order.id, { contractDepositPaid: true, status: '생산중' })
    await supabase.from('orders').update({ contract_deposit_paid: true, status: '생산중' }).eq('id', order.id)
  }

  const updateMaterials = (materials: Record<string, boolean>) => {
    onUpdate(order.id, { materials })
  }

  return (
    <div className="bg-white border-b border-gray-100 hover:bg-gray-50/50 transition-colors">
      {/* 메인 행 */}
      <div className="flex items-center gap-3 px-4 py-3">

        {/* 이미지 */}
        <div className="flex-shrink-0">
          {order.imageUrl ? (
            <img src={order.imageUrl} alt={order.productName} className="w-10 h-10 rounded-lg object-cover border border-gray-100" />
          ) : (
            <div className="w-10 h-10 rounded-lg bg-gray-100 flex items-center justify-center">
              <Package size={16} className="text-gray-400" />
            </div>
          )}
        </div>

        {/* 상품 정보 */}
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-2 flex-wrap">
            <span className="text-sm font-semibold text-gray-800 truncate max-w-xs">{order.productName}</span>
            <span className="text-xs text-gray-400 font-mono flex-shrink-0">{order.productCode}</span>
          </div>
          <div className="flex items-center gap-1.5 mt-0.5 flex-wrap">
            <span className="text-xs bg-purple-50 text-purple-700 px-2 py-0.5 rounded-full">{order.colorName}</span>
            <span className="text-xs bg-blue-50 text-blue-700 px-2 py-0.5 rounded-full font-medium">{order.orderQty.toLocaleString()}개</span>
            <span className="text-xs text-gray-400">{order.category}</span>
          </div>
        </div>

        {/* 공장 */}
        <div className="hidden md:flex flex-col items-start flex-shrink-0 w-28">
          <span className="text-xs text-gray-500 truncate w-full">{order.factory}</span>
          <span className={`text-xs font-medium mt-0.5 ${order.factoryPaymentType === '계약금선납' ? 'text-orange-500' : 'text-green-600'}`}>
            {order.factoryPaymentType}
          </span>
        </div>

        {/* 납기 */}
        <div className="hidden md:flex flex-col items-center flex-shrink-0 w-24 gap-0.5">
          {order.expectedDeliveryDate && (
            <span className="text-xs text-gray-500">{order.expectedDeliveryDate}</span>
          )}
          {getDaysBadge()}
        </div>

        {/* 부자재 요약 */}
        <div className="hidden lg:flex items-center flex-shrink-0 w-20">
          <div className="w-full bg-gray-200 rounded-full h-1.5">
            <div
              className={`h-1.5 rounded-full transition-all ${allMaterialsDone ? 'bg-green-500' : 'bg-blue-400'}`}
              style={{ width: materialsTotal > 0 ? `${(materialsDoneCount / materialsTotal) * 100}%` : '0%' }}
            />
          </div>
          <span className="text-xs text-gray-400 ml-1.5 flex-shrink-0">{materialsDoneCount}/{materialsTotal}</span>
        </div>

        {/* 상태 */}
        <div className="flex-shrink-0 w-32">
          <select
            value={order.status}
            onChange={e => updateStatus(e.target.value as OrderStatus)}
            className={`w-full text-xs border rounded-lg px-2 py-1.5 focus:outline-none focus:ring-1 focus:ring-blue-200 font-medium ${STATUS_COLORS[order.status] || 'bg-gray-100 text-gray-700 border-gray-200'}`}
          >
            {ORDER_STATUSES.map(s => <option key={s} value={s}>{s}</option>)}
          </select>
        </div>

        {/* 메모 + 펼치기 */}
        <div className="flex items-center gap-1 flex-shrink-0">
          {order.memo && (
            <span title={order.memo} className="text-yellow-500">
              <MessageSquare size={14} />
            </span>
          )}
          <button
            onClick={() => setExpanded(!expanded)}
            className="p-1 rounded hover:bg-gray-200 text-gray-400"
          >
            {expanded ? <ChevronUp size={14} /> : <ChevronDown size={14} />}
          </button>
        </div>
      </div>

      {/* 펼친 상세 */}
      {expanded && (
        <div className="px-4 pb-4 pt-1 border-t border-gray-100 bg-gray-50/50 space-y-3">
          <div className="flex flex-wrap gap-4 text-xs text-gray-600">
            <div className="flex items-center gap-1.5">
              <Truck size={12} className="text-gray-400" />
              <span>{order.deliveryDestination}</span>
            </div>
            <div className="flex items-center gap-1.5">
              <Calendar size={12} className="text-gray-400" />
              <span>발주일: {order.orderDate}</span>
            </div>
            {order.factoryPaymentType === '계약금선납' && (
              <div className="flex items-center gap-1.5">
                <CreditCard size={12} className="text-gray-400" />
                {order.contractDepositPaid ? (
                  <span className="text-green-600 font-medium">✅ 계약금 송금완료</span>
                ) : (
                  <button onClick={updateDepositPaid} className="text-orange-600 font-medium hover:underline">
                    ⏳ 계약금 미송금 → 클릭 시 완료처리
                  </button>
                )}
              </div>
            )}
            {order.warehouseQty > 0 && (
              <span className="text-green-600 font-medium">입고: {order.warehouseQty.toLocaleString()}개</span>
            )}
          </div>

          <div>
            <p className="text-xs text-gray-400 mb-1.5 font-medium">부자재 입고현황</p>
            <MaterialChecklist orderId={order.id} materials={order.materials} onChange={updateMaterials} />
          </div>

          {order.memo && (
            <div className="bg-yellow-50 border border-yellow-200 rounded-lg px-3 py-2 text-xs text-yellow-800">
              💬 {order.memo}
            </div>
          )}
        </div>
      )}
    </div>
  )
}
