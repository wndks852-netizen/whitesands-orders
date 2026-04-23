'use client'
import { useState } from 'react'
import { Package } from 'lucide-react'
import { supabase, rowToOrder } from '@/lib/supabase'
import { Order, Product } from '@/lib/types'
import { ORDER_STATUSES } from '@/lib/constants'
import ProductSearchInput from '@/components/ProductSearchInput'
import StatusBadge from '@/components/StatusBadge'

export default function IncomingPage() {
  const [selectedProduct, setSelectedProduct] = useState<Product | null>(null)
  const [orders, setOrders] = useState<Order[]>([])
  const [loading, setLoading] = useState(false)

  const handleSelectProduct = async (product: Product) => {
    setSelectedProduct(product)
    setLoading(true)
    const { data } = await supabase
      .from('orders')
      .select('*')
      .eq('product_code', product.productCode)
      .order('order_date', { ascending: false })
    if (data) setOrders(data.map(rowToOrder))
    setLoading(false)
  }

  const updateWarehouseQty = async (id: string, qty: number) => {
    setOrders(prev => prev.map(o => o.id === id ? { ...o, warehouseQty: qty } : o))
    await supabase.from('orders').update({ warehouse_qty: qty }).eq('id', id)
  }

  const updateStatus = async (id: string, status: string) => {
    setOrders(prev => prev.map(o => o.id === id ? { ...o, status: status as any } : o))
    await supabase.from('orders').update({ status }).eq('id', id)
  }

  const totalOrder = orders.reduce((s, o) => s + o.orderQty, 0)
  const totalWarehouse = orders.reduce((s, o) => s + (o.warehouseQty || 0), 0)

  return (
    <div className="max-w-4xl mx-auto">
      <h1 className="text-xl font-bold mb-6" style={{ color: '#1B2A4A' }}>상품 입고현황</h1>

      <div className="mb-6">
        <ProductSearchInput onSelect={handleSelectProduct} placeholder="상품명 또는 코드로 검색..." />
      </div>

      {selectedProduct && (
        <>
          {/* 상품 요약 카드 */}
          <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-4 mb-4 flex items-center gap-4">
            {selectedProduct.imageUrl ? (
              <img src={selectedProduct.imageUrl} alt={selectedProduct.productName} className="w-16 h-16 rounded-xl object-cover" />
            ) : (
              <div className="w-16 h-16 rounded-xl bg-gray-100 flex items-center justify-center">
                <Package size={20} className="text-gray-400" />
              </div>
            )}
            <div className="flex-1">
              <h2 className="font-semibold text-gray-800">{selectedProduct.productName}</h2>
              <p className="text-sm text-gray-400">{selectedProduct.productCode}</p>
            </div>
            <div className="flex gap-4 text-center">
              <div>
                <p className="text-xs text-gray-400">총 발주</p>
                <p className="text-lg font-bold" style={{ color: '#1B2A4A' }}>{totalOrder.toLocaleString()}</p>
              </div>
              <div>
                <p className="text-xs text-gray-400">입고완료</p>
                <p className="text-lg font-bold text-green-600">{totalWarehouse.toLocaleString()}</p>
              </div>
              <div>
                <p className="text-xs text-gray-400">미입고</p>
                <p className="text-lg font-bold text-orange-500">{(totalOrder - totalWarehouse).toLocaleString()}</p>
              </div>
            </div>
          </div>

          {/* 발주 목록 테이블 */}
          {loading ? (
            <div className="bg-white rounded-2xl p-8 text-center text-gray-400">로딩 중...</div>
          ) : (
            <div className="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">
              <table className="w-full text-sm">
                <thead className="bg-gray-50 text-gray-500 text-xs">
                  <tr>
                    {['발주일', '컬러', '발주수량', '입고수량', '예상납기', '입고처', '상태'].map(h => (
                      <th key={h} className="px-4 py-3 text-left font-medium">{h}</th>
                    ))}
                  </tr>
                </thead>
                <tbody className="divide-y divide-gray-50">
                  {orders.map(order => (
                    <tr key={order.id} className="hover:bg-gray-50">
                      <td className="px-4 py-3 text-gray-600">{order.orderDate}</td>
                      <td className="px-4 py-3">
                        <span className="bg-purple-50 text-purple-700 px-2 py-0.5 rounded-full text-xs">{order.colorName}</span>
                      </td>
                      <td className="px-4 py-3 font-medium">{order.orderQty.toLocaleString()}</td>
                      <td className="px-4 py-3">
                        <input
                          type="number"
                          defaultValue={order.warehouseQty}
                          onBlur={e => updateWarehouseQty(order.id, parseInt(e.target.value) || 0)}
                          className="w-24 border border-gray-200 rounded-lg px-2 py-1 text-sm focus:outline-none focus:ring-1 focus:ring-blue-200"
                        />
                      </td>
                      <td className="px-4 py-3 text-gray-600">{order.expectedDeliveryDate || '-'}</td>
                      <td className="px-4 py-3 text-gray-600">{order.deliveryDestination}</td>
                      <td className="px-4 py-3">
                        <select
                          value={order.status}
                          onChange={e => updateStatus(order.id, e.target.value)}
                          className="text-xs border border-gray-200 rounded-lg px-2 py-1 focus:outline-none bg-white"
                        >
                          {ORDER_STATUSES.map(s => <option key={s} value={s}>{s}</option>)}
                        </select>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
              {orders.length === 0 && (
                <div className="text-center py-12 text-gray-400 text-sm">발주 내역이 없습니다.</div>
              )}
            </div>
          )}
        </>
      )}

      {!selectedProduct && (
        <div className="text-center py-20 text-gray-400">
          <Package size={40} className="mx-auto mb-3 opacity-30" />
          <p className="text-sm">상품을 검색해서 입고현황을 확인하세요.</p>
        </div>
      )}
    </div>
  )
}
