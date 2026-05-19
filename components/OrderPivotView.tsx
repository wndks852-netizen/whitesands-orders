'use client'
import { useState } from 'react'
import { Order } from '@/lib/types'
import OrderDetailModal from './OrderDetailModal'
import { Package, ChevronDown, ChevronUp } from 'lucide-react'

interface Props {
  orders: Order[]
  onOrderUpdated: (updated: Order) => void
}

const STATUS_CELL_BG: Record<string, string> = {
  '발주완료':       'bg-gray-50 border-gray-200',
  '계약금송금대기': 'bg-amber-50 border-amber-100',
  '샘플중':         'bg-yellow-50 border-yellow-100',
  '생산중':         'bg-sky-50 border-sky-100',
  '화물출고':       'bg-violet-50 border-violet-100',
  '1차입고':        'bg-emerald-50 border-emerald-100',
  '2차입고':        'bg-emerald-50 border-emerald-100',
  '3차입고':        'bg-emerald-50 border-emerald-100',
  '4차입고':        'bg-emerald-50 border-emerald-100',
  '입고완료':       'bg-emerald-100 border-emerald-200',
}

const STATUS_DOT: Record<string, string> = {
  '발주완료':       'bg-gray-400',
  '계약금송금대기': 'bg-amber-400',
  '샘플중':         'bg-yellow-400',
  '생산중':         'bg-sky-500',
  '화물출고':       'bg-violet-500',
  '1차입고':        'bg-emerald-400',
  '2차입고':        'bg-emerald-400',
  '3차입고':        'bg-emerald-400',
  '4차입고':        'bg-emerald-400',
  '입고완료':       'bg-emerald-600',
}

function getSeasonBg(season: string) {
  if (!season) return 'bg-gray-800 text-white'
  if (season.includes('SS')) return 'bg-sky-500 text-white'
  if (season.includes('FW')) return 'bg-gray-800 text-white'
  return 'bg-gray-700 text-white'
}

function getRounds(group: Order[]): string[] {
  const seen = new Set<string>()
  const rounds: string[] = []
  group.forEach(o => {
    const r = o.orderRound || '차수없음'
    if (!seen.has(r)) { seen.add(r); rounds.push(r) }
  })
  return rounds
}

function getColors(group: Order[]): string[] {
  const seen = new Set<string>()
  const colors: string[] = []
  group.forEach(o => {
    if (!seen.has(o.colorName)) { seen.add(o.colorName); colors.push(o.colorName) }
  })
  return colors
}

export default function OrderPivotView({ orders, onOrderUpdated }: Props) {
  const [detailOrder, setDetailOrder] = useState<Order | null>(null)
  const [collapsed, setCollapsed] = useState<Set<string>>(new Set())

  const grouped = orders.reduce((acc, order) => {
    const key = order.productCode
    if (!acc[key]) acc[key] = []
    acc[key].push(order)
    return acc
  }, {} as Record<string, Order[]>)

  const toggleCollapse = (code: string) => {
    setCollapsed(prev => {
      const next = new Set(prev)
      next.has(code) ? next.delete(code) : next.add(code)
      return next
    })
  }

  if (Object.keys(grouped).length === 0) {
    return (
      <div className="text-center py-20 text-gray-400">
        <Package size={40} className="mx-auto mb-3 opacity-30" />
        <p className="text-sm">발주 내역이 없습니다.</p>
      </div>
    )
  }

  return (
    <div className="space-y-3">
      {Object.entries(grouped).map(([productCode, group]) => {
        const first = group[0]
        const rounds = getRounds(group)
        const colors = getColors(group)
        const isCollapsed = collapsed.has(productCode)

        const roundTotals: Record<string, number> = {}
        rounds.forEach(r => {
          roundTotals[r] = group
            .filter(o => (o.orderRound || '차수없음') === r)
            .reduce((s, o) => s + o.orderQty, 0)
        })
        const grandTotal = group.reduce((s, o) => s + o.orderQty, 0)

        return (
          <div key={productCode} className="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">

            {/* 상품 헤더 */}
            <button
              onClick={() => toggleCollapse(productCode)}
              className="w-full flex items-center gap-3 px-5 py-3.5 hover:bg-gray-50 transition-colors text-left"
            >
              {first.imageUrl ? (
                <img src={first.imageUrl} alt={first.productName}
                  className="w-11 h-11 rounded-xl object-cover border border-gray-100 flex-shrink-0" />
              ) : (
                <div className="w-11 h-11 rounded-xl bg-gray-100 flex items-center justify-center flex-shrink-0">
                  <Package size={16} className="text-gray-400" />
                </div>
              )}

              <div className="flex-1 min-w-0">
                <div className="flex items-center gap-2 flex-wrap">
                  {first.season && (
                    <span className={`text-xs px-2 py-0.5 rounded-md font-bold ${getSeasonBg(first.season)}`}>
                      {first.season}
                    </span>
                  )}
                  <p className="text-sm font-bold text-gray-900 truncate">{first.productName}</p>
                </div>
                <p className="text-xs text-gray-400 font-mono mt-0.5">{productCode}</p>
              </div>

              <div className="flex items-center gap-4 flex-shrink-0">
                <div className="text-right">
                  <p className="text-xs text-gray-400">총 발주</p>
                  <p className="text-sm font-bold text-gray-900">{grandTotal.toLocaleString()}개</p>
                </div>
                <div className="text-right">
                  <p className="text-xs text-gray-400">컬러</p>
                  <p className="text-sm font-bold text-gray-900">{colors.length}색</p>
                </div>
                <div className="text-right">
                  <p className="text-xs text-gray-400">차수</p>
                  <p className="text-sm font-bold text-gray-900">{rounds.length}차</p>
                </div>
                {isCollapsed
                  ? <ChevronDown size={16} className="text-gray-400" />
                  : <ChevronUp size={16} className="text-gray-400" />
                }
              </div>
            </button>

            {/* 피벗 테이블 */}
            {!isCollapsed && (
              <div className="px-5 pb-5 overflow-x-auto">
                <table className="w-full text-sm border-collapse" style={{ minWidth: `${Math.max(400, rounds.length * 120 + 120)}px` }}>
                  <thead>
                    <tr>
                      <th className="text-left text-xs font-semibold text-gray-400 pb-2 pr-4 w-28">컬러</th>
                      {rounds.map(round => (
                        <th key={round} className="text-center text-xs font-bold text-gray-600 pb-2 px-2 min-w-28">
                          <span className="inline-block bg-indigo-50 text-indigo-700 px-2.5 py-1 rounded-lg">
                            {round}
                          </span>
                        </th>
                      ))}
                      <th className="text-center text-xs font-bold text-gray-600 pb-2 px-2 min-w-20">
                        <span className="inline-block bg-gray-100 text-gray-600 px-2.5 py-1 rounded-lg">합계</span>
                      </th>
                    </tr>
                  </thead>

                  <tbody className="divide-y divide-gray-50">
                    {colors.map(colorName => {
                      const colorTotal = group
                        .filter(o => o.colorName === colorName)
                        .reduce((s, o) => s + o.orderQty, 0)

                      return (
                        <tr key={colorName}>
                          <td className="py-2 pr-4">
                            <span className="text-xs font-semibold text-gray-700">{colorName}</span>
                          </td>

                          {rounds.map(round => {
                            const order = group.find(
                              o => o.colorName === colorName && (o.orderRound || '차수없음') === round
                            )

                            if (!order) {
                              return (
                                <td key={round} className="py-2 px-2 text-center">
                                  <div className="h-14 flex items-center justify-center">
                                    <span className="text-gray-200 text-xs">—</span>
                                  </div>
                                </td>
                              )
                            }

                            const warehouseQty = order.warehouseQty || 0
                            const remaining = order.orderQty - warehouseQty
                            const pct = order.orderQty > 0
                              ? Math.min(Math.round((warehouseQty / order.orderQty) * 100), 100)
                              : 0

                            return (
                              <td key={round} className="py-2 px-2">
                                <button
                                  onClick={() => setDetailOrder(order)}
                                  className={`w-full rounded-xl border p-2.5 text-left transition-all hover:shadow-md hover:scale-[1.02] active:scale-100 ${STATUS_CELL_BG[order.status] || 'bg-gray-50 border-gray-200'}`}
                                >
                                  <div className="flex items-baseline gap-1 mb-1.5">
                                    <span className="text-base font-black text-gray-900 leading-none">
                                      {order.orderQty.toLocaleString()}
                                    </span>
                                    <span className="text-xs text-gray-400 font-normal">개</span>
                                  </div>

                                  <div className="flex items-center gap-1 mb-2">
                                    <span className={`w-1.5 h-1.5 rounded-full flex-shrink-0 ${STATUS_DOT[order.status] || 'bg-gray-400'}`} />
                                    <span className="text-xs text-gray-500 font-medium leading-none truncate">
                                      {order.status}
                                    </span>
                                  </div>

                                  {warehouseQty > 0 ? (
                                    <div>
                                      <div className="h-1 bg-white/70 rounded-full overflow-hidden mb-1">
                                        <div
                                          className={`h-full rounded-full ${pct >= 100 ? 'bg-emerald-500' : 'bg-sky-400'}`}
                                          style={{ width: `${pct}%` }}
                                        />
                                      </div>
                                      <div className="flex justify-between text-xs text-gray-400">
                                        <span>입고 {warehouseQty.toLocaleString()}</span>
                                        {remaining > 0
                                          ? <span>잔 {remaining.toLocaleString()}</span>
                                          : <span className="text-emerald-500 font-medium">완료</span>
                                        }
                                      </div>
                                    </div>
                                  ) : (
                                    <div className="text-xs text-gray-300">미입고</div>
                                  )}
                                </button>
                              </td>
                            )
                          })}

                          <td className="py-2 px-2 text-center">
                            <div className="bg-gray-50 rounded-xl border border-gray-200 p-2.5">
                              <span className="text-sm font-bold text-gray-800">{colorTotal.toLocaleString()}</span>
                              <div className="text-xs text-gray-400 mt-0.5">개</div>
                            </div>
                          </td>
                        </tr>
                      )
                    })}
                  </tbody>

                  <tfoot>
                    <tr className="border-t border-gray-100">
                      <td className="pt-2 pr-4">
                        <span className="text-xs font-bold text-gray-500">합계</span>
                      </td>
                      {rounds.map(round => (
                        <td key={round} className="pt-2 px-2 text-center">
                          <div className="bg-indigo-50 rounded-xl border border-indigo-100 p-2">
                            <span className="text-sm font-bold text-indigo-700">{roundTotals[round].toLocaleString()}</span>
                            <div className="text-xs text-indigo-400 mt-0.5">개</div>
                          </div>
                        </td>
                      ))}
                      <td className="pt-2 px-2 text-center">
                        <div className="bg-gray-900 rounded-xl p-2">
                          <span className="text-sm font-bold text-white">{grandTotal.toLocaleString()}</span>
                          <div className="text-xs text-gray-400 mt-0.5">개</div>
                        </div>
                      </td>
                    </tr>
                  </tfoot>
                </table>
              </div>
            )}
          </div>
        )
      })}

      {detailOrder && (
        <OrderDetailModal
          order={detailOrder}
          onClose={() => setDetailOrder(null)}
          onUpdated={updated => {
            onOrderUpdated(updated)
            setDetailOrder(updated)
          }}
        />
      )}
    </div>
  )
}
