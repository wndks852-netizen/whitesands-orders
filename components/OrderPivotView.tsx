'use client'
import { useState } from 'react'
import { Order } from '@/lib/types'
import OrderDetailModal from './OrderDetailModal'
import { Package, ChevronDown, ChevronUp } from 'lucide-react'

interface Props {
  orders: Order[]
  onOrderUpdated: (updated: Order) => void
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

const STATUS_CELL_BG: Record<string, string> = {
  '발주완료':       'bg-gray-50 border-gray-200',
  '계약금송금대기': 'bg-amber-50 border-amber-200',
  '샘플중':         'bg-yellow-50 border-yellow-200',
  '생산중':         'bg-sky-50 border-sky-200',
  '화물출고':       'bg-violet-50 border-violet-200',
  '1차입고':        'bg-emerald-50 border-emerald-200',
  '2차입고':        'bg-emerald-50 border-emerald-200',
  '3차입고':        'bg-emerald-50 border-emerald-200',
  '4차입고':        'bg-emerald-50 border-emerald-200',
  '입고완료':       'bg-emerald-100 border-emerald-300',
}

function getSeasonStyle(season: string) {
  if (!season) return 'bg-gray-800 text-white'
  if (season.includes('SS')) return 'bg-sky-500 text-white'
  if (season.includes('FW')) return 'bg-gray-800 text-white'
  return 'bg-gray-700 text-white'
}

function sortRounds(rounds: string[]): string[] {
  return [...rounds].sort((a, b) => {
    const yearA = parseInt(a.slice(0, 2)) || 0
    const yearB = parseInt(b.slice(0, 2)) || 0
    if (yearA !== yearB) return yearA - yearB
    const numA = parseInt(a.replace(/[^0-9]/g, '').slice(-2)) || 0
    const numB = parseInt(b.replace(/[^0-9]/g, '').slice(-2)) || 0
    return numA - numB
  })
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
    <div className="space-y-2">
      {Object.entries(grouped).map(([productCode, group]) => {
        const first = group[0]
        const isCollapsed = collapsed.has(productCode)

        const rounds = sortRounds(Array.from(new Set(group.map(o => o.orderRound || '차수없음'))))
        const colors = Array.from(new Set(group.map(o => o.colorName)))
        const grandTotal = group.reduce((s, o) => s + o.orderQty, 0)

        return (
          <div key={productCode} className="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">

            {/* 상품 헤더 */}
            <button
              onClick={() => toggleCollapse(productCode)}
              className="w-full flex items-center gap-3 px-5 py-3 hover:bg-gray-50 transition-colors text-left"
            >
              {first.imageUrl ? (
                <img src={first.imageUrl} alt={first.productName}
                  className="w-10 h-10 rounded-xl object-cover border border-gray-100 flex-shrink-0" />
              ) : (
                <div className="w-10 h-10 rounded-xl bg-gray-100 flex items-center justify-center flex-shrink-0">
                  <Package size={14} className="text-gray-400" />
                </div>
              )}

              <div className="flex items-center gap-2 flex-1 min-w-0">
                {first.season && (
                  <span className={`text-xs px-2 py-0.5 rounded-md font-bold flex-shrink-0 ${getSeasonStyle(first.season)}`}>
                    {first.season}
                  </span>
                )}
                <p className="text-sm font-bold text-gray-900 truncate">{first.productName}</p>
                <p className="text-xs text-gray-400 font-mono flex-shrink-0">{productCode}</p>
              </div>

              <div className="flex items-center gap-5 flex-shrink-0 text-right">
                <div>
                  <p className="text-xs text-gray-400 leading-none mb-0.5">총 발주</p>
                  <p className="text-sm font-bold text-gray-900">{grandTotal.toLocaleString()}<span className="text-xs text-gray-400 font-normal ml-0.5">개</span></p>
                </div>
                <div>
                  <p className="text-xs text-gray-400 leading-none mb-0.5">컬러</p>
                  <p className="text-sm font-bold text-gray-900">{colors.length}<span className="text-xs text-gray-400 font-normal ml-0.5">색</span></p>
                </div>
                <div>
                  <p className="text-xs text-gray-400 leading-none mb-0.5">차수</p>
                  <p className="text-sm font-bold text-gray-900">{rounds.length}<span className="text-xs text-gray-400 font-normal ml-0.5">차</span></p>
                </div>
                {isCollapsed
                  ? <ChevronDown size={15} className="text-gray-400" />
                  : <ChevronUp size={15} className="text-gray-400" />
                }
              </div>
            </button>

            {/* 피벗 테이블 */}
            {!isCollapsed && (
              <div className="border-t border-gray-100 overflow-x-auto">
                <table className="border-collapse" style={{ tableLayout: 'fixed', width: `${120 + rounds.length * 160 + 100}px` }}>
                  <colgroup>
                    <col style={{ width: '120px' }} />
                    {rounds.map(r => <col key={r} style={{ width: '160px' }} />)}
                    <col style={{ width: '100px' }} />
                  </colgroup>

                  <thead>
                    <tr className="bg-gray-50 border-b border-gray-100">
                      <th className="px-4 py-2.5 text-left">
                        <span className="text-xs font-semibold text-gray-400">컬러</span>
                      </th>
                      {rounds.map(round => (
                        <th key={round} className="px-3 py-2.5 text-center border-l border-gray-100">
                          <span className="inline-block bg-indigo-50 text-indigo-700 text-xs font-bold px-2.5 py-1 rounded-lg">
                            {round}
                          </span>
                        </th>
                      ))}
                      <th className="px-3 py-2.5 text-center border-l border-gray-100">
                        <span className="text-xs font-semibold text-gray-400">합계</span>
                      </th>
                    </tr>
                  </thead>

                  <tbody className="divide-y divide-gray-50">
                    {colors.map(colorName => {
                      const colorTotal = group
                        .filter(o => o.colorName === colorName)
                        .reduce((s, o) => s + o.orderQty, 0)

                      return (
                        <tr key={colorName} className="hover:bg-gray-50/50 transition-colors">
                          <td className="px-4 py-3">
                            <span className="text-xs font-semibold text-gray-700">{colorName}</span>
                          </td>

                          {rounds.map(round => {
                            const order = group.find(
                              o => o.colorName === colorName && (o.orderRound || '차수없음') === round
                            )

                            if (!order) {
                              return (
                                <td key={round} className="px-3 py-3 border-l border-gray-100">
                                  <div className="h-14 rounded-xl border border-dashed border-gray-200 flex items-center justify-center">
                                    <span className="text-gray-200 text-sm font-light">—</span>
                                  </div>
                                </td>
                              )
                            }

                            const wQty = order.warehouseQty || 0
                            const remaining = order.orderQty - wQty
                            const pct = order.orderQty > 0
                              ? Math.min(Math.round((wQty / order.orderQty) * 100), 100)
                              : 0

                            return (
                              <td key={round} className="px-3 py-3 border-l border-gray-100">
                                <button
                                  onClick={() => setDetailOrder(order)}
                                  className={`w-full h-14 rounded-xl border px-3 py-2 text-left transition-all hover:shadow-md hover:brightness-95 active:scale-[0.98] flex flex-col justify-between ${STATUS_CELL_BG[order.status] || 'bg-gray-50 border-gray-200'}`}
                                >
                                  <div className="flex items-baseline justify-between">
                                    <span className="text-base font-black text-gray-900 leading-none tracking-tight">
                                      {order.orderQty.toLocaleString()}
                                      <span className="text-xs font-normal text-gray-400 ml-0.5">개</span>
                                    </span>
                                    {wQty > 0 && (
                                      <span className="text-xs text-emerald-600 font-medium leading-none">
                                        입고 {wQty.toLocaleString()}
                                      </span>
                                    )}
                                  </div>
                                  <div className="flex items-center gap-1.5">
                                    <span className={`w-1.5 h-1.5 rounded-full flex-shrink-0 ${STATUS_DOT[order.status] || 'bg-gray-400'}`} />
                                    <span className="text-xs text-gray-500 font-medium leading-none truncate flex-1">
                                      {order.status}
                                    </span>
                                    {pct > 0 && (
                                      <span className="text-xs text-gray-400 leading-none flex-shrink-0">{pct}%</span>
                                    )}
                                  </div>
                                </button>
                              </td>
                            )
                          })}

                          <td className="px-3 py-3 border-l border-gray-100">
                            <div className="h-14 rounded-xl border border-gray-200 bg-gray-50 flex flex-col items-center justify-center gap-0.5">
                              <span className="text-sm font-bold text-gray-800 leading-none">{colorTotal.toLocaleString()}</span>
                              <span className="text-xs text-gray-400 leading-none">개</span>
                            </div>
                          </td>
                        </tr>
                      )
                    })}
                  </tbody>

                  <tfoot>
                    <tr className="border-t-2 border-gray-200 bg-gray-50">
                      <td className="px-4 py-2.5">
                        <span className="text-xs font-bold text-gray-500">합계</span>
                      </td>
                      {rounds.map(round => {
                        const roundTotal = group
                          .filter(o => (o.orderRound || '차수없음') === round)
                          .reduce((s, o) => s + o.orderQty, 0)
                        return (
                          <td key={round} className="px-3 py-2.5 text-center border-l border-gray-200">
                            <div className="h-10 bg-indigo-50 rounded-xl border border-indigo-100 flex flex-col items-center justify-center gap-0.5">
                              <span className="text-sm font-bold text-indigo-700 leading-none">{roundTotal.toLocaleString()}</span>
                              <span className="text-xs text-indigo-400 leading-none">개</span>
                            </div>
                          </td>
                        )
                      })}
                      <td className="px-3 py-2.5 border-l border-gray-200">
                        <div className="h-10 bg-gray-900 rounded-xl flex flex-col items-center justify-center gap-0.5">
                          <span className="text-sm font-bold text-white leading-none">{grandTotal.toLocaleString()}</span>
                          <span className="text-xs text-gray-400 leading-none">개</span>
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
