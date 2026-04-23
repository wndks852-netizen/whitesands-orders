'use client'
import { useState } from 'react'
import { X } from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { Order, OrderStatus, PaymentType, DeliveryDest, Category } from '@/lib/types'
import { ORDER_STATUSES, DELIVERY_DESTS, QUICK_FACTORIES, CATEGORIES } from '@/lib/constants'
import DatePickerWithDay from '@/components/DatePickerWithDay'

interface Props {
  order: Order
  onClose: () => void
  onSaved: (updated: Order) => void
}

export default function OrderEditModal({ order, onClose, onSaved }: Props) {
  const [form, setForm] = useState({
    orderDate: order.orderDate,
    category: order.category,
    productCode: order.productCode,
    productName: order.productName,
    colorCode: order.colorCode,
    colorName: order.colorName,
    orderQty: order.orderQty,
    factory: order.factory,
    factoryPaymentType: order.factoryPaymentType,
    deliveryDestination: order.deliveryDestination,
    expectedDeliveryDate: order.expectedDeliveryDate || '',
    status: order.status,
    memo: order.memo,
  })
  const [saving, setSaving] = useState(false)

  const handleSave = async () => {
    setSaving(true)
    const updates = {
      order_date: form.orderDate,
      category: form.category,
      product_code: form.productCode,
      product_name: form.productName,
      color_code: form.colorCode,
      color_name: form.colorName,
      order_qty: form.orderQty,
      factory: form.factory,
      factory_payment_type: form.factoryPaymentType,
      delivery_destination: form.deliveryDestination,
      expected_delivery_date: form.expectedDeliveryDate || null,
      status: form.status,
      memo: form.memo,
    }
    await supabase.from('orders').update(updates).eq('id', order.id)
    setSaving(false)
    onSaved({
      ...order,
      ...form,
      expectedDeliveryDate: form.expectedDeliveryDate || null,
    })
  }

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 p-4">
      <div className="bg-white rounded-2xl shadow-2xl w-full max-w-lg max-h-[90vh] overflow-y-auto">
        <div className="sticky top-0 bg-white px-6 py-4 border-b border-gray-100 flex justify-between items-center z-10">
          <h2 className="text-base font-bold" style={{ color: '#1B2A4A' }}>발주 수정</h2>
          <button onClick={onClose}><X size={18} className="text-gray-400" /></button>
        </div>

        <div className="p-6 space-y-4">
          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">발주일</label>
              <DatePickerWithDay
                value={form.orderDate}
                onChange={v => setForm(f => ({ ...f, orderDate: v }))}
              />
            </div>
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">카테고리</label>
              <select value={form.category}
                onChange={e => setForm(f => ({ ...f, category: e.target.value as Category }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                {CATEGORIES.map(c => <option key={c} value={c}>{c}</option>)}
              </select>
            </div>
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">상품코드</label>
            <input value={form.productCode}
              onChange={e => setForm(f => ({ ...f, productCode: e.target.value }))}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">상품명</label>
            <input value={form.productName}
              onChange={e => setForm(f => ({ ...f, productName: e.target.value }))}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
          </div>

          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">컬러코드</label>
              <input value={form.colorCode}
                onChange={e => setForm(f => ({ ...f, colorCode: e.target.value }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
            </div>
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">컬러명</label>
              <input value={form.colorName}
                onChange={e => setForm(f => ({ ...f, colorName: e.target.value }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
            </div>
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">발주수량</label>
            <input type="number" value={form.orderQty}
              onChange={e => setForm(f => ({ ...f, orderQty: parseInt(e.target.value) || 0 }))}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-2">생산처</label>
            <div className="flex flex-wrap gap-1.5 mb-2">
              {QUICK_FACTORIES.map(f => (
                <button key={f} onClick={() => setForm(prev => ({ ...prev, factory: f }))}
                  className={`px-2.5 py-1 rounded-lg text-xs border transition-all ${
                    form.factory === f
                      ? 'border-blue-400 bg-blue-50 text-blue-700'
                      : 'border-gray-200 text-gray-600 hover:border-gray-300'
                  }`}>
                  {f}
                </button>
              ))}
            </div>
            <input value={form.factory}
              onChange={e => setForm(f => ({ ...f, factory: e.target.value }))}
              placeholder="직접 입력"
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
          </div>

          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">생산방식</label>
              <select value={form.factoryPaymentType}
                onChange={e => setForm(f => ({ ...f, factoryPaymentType: e.target.value as PaymentType }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                <option value="계약금선납">계약금선납</option>
                <option value="바로생산">바로생산</option>
              </select>
            </div>
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">입고처</label>
              <select value={form.deliveryDestination}
                onChange={e => setForm(f => ({ ...f, deliveryDestination: e.target.value as DeliveryDest }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                {DELIVERY_DESTS.map(d => <option key={d} value={d}>{d}</option>)}
              </select>
            </div>
          </div>

          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">예상납기</label>
              <DatePickerWithDay
                value={form.expectedDeliveryDate}
                onChange={v => setForm(f => ({ ...f, expectedDeliveryDate: v }))}
              />
            </div>
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">상태</label>
              <select value={form.status}
                onChange={e => setForm(f => ({ ...f, status: e.target.value as OrderStatus }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                {ORDER_STATUSES.map(s => <option key={s} value={s}>{s}</option>)}
              </select>
            </div>
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">메모</label>
            <textarea value={form.memo}
              onChange={e => setForm(f => ({ ...f, memo: e.target.value }))}
              rows={2}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 resize-none" />
          </div>
        </div>

        <div className="sticky bottom-0 bg-white px-6 py-4 border-t border-gray-100 flex gap-3">
          <button onClick={onClose}
            className="flex-1 border border-gray-200 rounded-xl py-2.5 text-sm font-medium text-gray-600 hover:bg-gray-50">
            취소
          </button>
          <button onClick={handleSave} disabled={saving}
            className="flex-1 rounded-xl py-2.5 text-sm font-semibold text-white disabled:opacity-50 hover:opacity-90 transition-opacity"
            style={{ backgroundColor: '#1B2A4A' }}>
            {saving ? '저장 중...' : '저장'}
          </button>
        </div>
      </div>
    </div>
  )
}
