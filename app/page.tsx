'use client'
import { useEffect, useState, useCallback, useRef } from 'react'
import { Search, RefreshCw, Pencil, Trash2, Package, CreditCard, CheckSquare } from 'lucide-react'
import dayjs from 'dayjs'
import { supabase, rowToOrder } from '@/lib/supabase'
import { Order, OrderStatus } from '@/lib/types'
import { ORDER_STATUSES, STATUS_GROUPS } from '@/lib/constants'
import MaterialChecklist from '@/components/MaterialChecklist'
import StatusBadge from '@/components/StatusBadge'
import OrderEditModal from '@/components/OrderEditModal'
import OrderDetailModal from '@/components/OrderDetailModal'

export default function HomePage() {
  const [orders, setOrders] = useState<Order[]>([])
  const [loading, setLoading] = useState(true)
  const [groupTab, setGroupTab] = useState('전체')
  const [categoryFilter, setCategoryFilter] = useState('전체')
  const [factoryFilter, setFactoryFilter] = useState('전체')
  const [searchQuery, setSearchQuery] = useState('')
  const [editingOrder, setEditingOrder] = useState<Order | null>(null)
  const [detailOrder, setDetailOrder] = useState<Order | null>(null)

  // 관리자 모드
  const [isAdmin, setIsAdmin] = useState(false)
  // 편집 모드 (일괄 삭제)
  const [editMode, setEditMode] = useState(false)
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [bulkDeleting, setBulkDeleting] = useState(false)
  const selectAllRef = useRef<HTMLInputElement>(null)

  useEffect(() => {
    setIsAdmin(sessionStorage.getItem('ws_admin_mode') === 'true')
    const onStorage = () => setIsAdmin(sessionStorage.getItem('ws_admin_mode') === 'true')
    window.addEventListener('storage', onStorage)
    return () => window.removeEventListener('storage', onStorage)
  }, [])

  // 편집 모드 종료 시 선택 초기화
  useEffect(() => {
    if (!editMode) setSelectedIds(new Set())
  }, [editMode])

  // 정렬 기준: order_date DESC, created_at DESC — 절대 변경 금지
  const fetchOrders = useCallback(async () => {
    const { data } = await supabase
      .from('orders')
      .select('*')
      .order('order_date', { ascending: false })
      .order('created_at', { ascending: false })
    if (data) setOrders(data.map(rowToOrder))
    setLoading(false)
  }, [])

  useEffect(() => {
    fetchOrders()
    const channel = supabase
      .channel('orders-main')
      // INSERT: 새 발주 → 전체 재조회
      .on('postgres_changes', { event: 'INSERT', schema: 'public', table: 'orders' }, () => {
        fetchOrders()
      })
      // UPDATE: 해당 항목만 로컬 업데이트 → 스크롤 점프 없음
      .on('postgres_changes', { event: 'UPDATE', schema: 'public', table: 'orders' }, payload => {
        const updated = rowToOrder(payload.new as Record<string, unknown>)
        setOrders(prev => prev.map(o => o.id === updated.id ? updated : o))
      })
      // DELETE: 해당 항목만 제거
      .on('postgres_changes', { event: 'DELETE', schema: 'public', table: 'orders' }, payload => {
        setOrders(prev => prev.filter(o => o.id !== (payload.old as { id: string }).id))
      })
      .subscribe()
    return () => { supabase.removeChannel(channel) }
  }, [fetchOrders])

  // 로컬 상태 업데이트 — 순서는 변경하지 않고 해당 항목만 업데이트
  const handleUpdate = (id: string, updates: Partial<Order>) => {
    setOrders(prev => prev.map(o => o.id === id ? { ...o, ...updates } : o))
  }

  const handleDelete = async (id: string, e: React.MouseEvent) => {
    e.stopPropagation()
    if (!confirm('이 발주를 삭제하시겠습니까?')) return
    await supabase.from('orders').delete().eq('id', id)
    setOrders(prev => prev.filter(o => o.id !== id))
  }

  const toggleDepositPaid = async (order: Order, e: React.MouseEvent) => {
    e.stopPropagation()
    const newVal = !order.contractDepositPaid
    const newStatus = newVal && order.status === '계약금송금대기' ? '생산중' : order.status
    handleUpdate(order.id, { contractDepositPaid: newVal, status: newStatus as OrderStatus })
    await supabase.from('orders').update({
      contract_deposit_paid: newVal,
      status: newStatus,
    }).eq('id', order.id)
  }

  const updateStatus = async (id: string, status: OrderStatus, e: React.ChangeEvent<HTMLSelectElement>) => {
    e.stopPropagation()
    handleUpdate(id, { status })
    await supabase.from('orders').update({ status }).eq('id', id)
  }

  const openEdit = (order: Order, e: React.MouseEvent) => {
    e.stopPropagation()
    setEditingOrder(order)
  }

  // 일괄 삭제
  const handleBulkDelete = async () => {
    if (selectedIds.size === 0) return
    if (!confirm(`선택한 ${selectedIds.size}건을 삭제하시겠습니까?\n이 작업은 되돌릴 수 없습니다.`)) return
    setBulkDeleting(true)
    const ids = Array.from(selectedIds)
    await supabase.from('orders').delete().in('id', ids)
    setOrders(prev => prev.filter(o => !selectedIds.has(o.id)))
    setSelectedIds(new Set())
    setEditMode(false)
    setBulkDeleting(false)
  }

  const factories = ['전체', ...Array.from(new Set(orders.map(o => o.factory).filter(Boolean)))]
  // 카테고리: 실제 발주 데이터에서 동적으로 추출
  const categories = ['전체', ...Array.from(new Set(orders.map(o => o.category).filter(Boolean))).sort()]

  const filtered = orders.filter(o => {
    const group = STATUS_GROUPS.find(g => g.label === groupTab)
    if (group && group.statuses.length > 0 && !group.statuses.includes(o.status)) return false
    if (categoryFilter !== '전체' && o.category !== categoryFilter) return false
    if (factoryFilter !== '전체' && o.factory !== factoryFilter) return false
    if (searchQuery) {
      const q = searchQuery.toLowerCase()
      if (!o.productName.toLowerCase().includes(q) && !o.productCode.toLowerCase().includes(q)) return false
    }
    return true
  })

  // 전체 선택 체크박스 상태
  const allFilteredSelected = filtered.length > 0 && filtered.every(o => selectedIds.has(o.id))
  const someFilteredSelected = filtered.some(o => selectedIds.has(o.id)) && !allFilteredSelected

  useEffect(() => {
    if (selectAllRef.current) {
      selectAllRef.current.indeterminate = someFilteredSelected
    }
  }, [someFilteredSelected])

  const toggleSelectAll = () => {
    if (allFilteredSelected) {
      setSelectedIds(prev => {
        const next = new Set(prev)
        filtered.forEach(o => next.delete(o.id))
        return next
      })
    } else {
      setSelectedIds(prev => {
        const next = new Set(prev)
        filtered.forEach(o => next.add(o.id))
        return next
      })
    }
  }

  const toggleSelect = (id: string, e: React.MouseEvent) => {
    e.stopPropagation()
    setSelectedIds(prev => {
      const next = new Set(prev)
      next.has(id) ? next.delete(id) : next.add(id)
      return next
    })
  }

  const getDaysBadge = (dateStr: string | null) => {
    if (!dateStr) return null
    const days = dayjs(dateStr).diff(dayjs(), 'day')
    const cls =
      days < 0   ? 'bg-red-200 text-red-800' :
      days <= 7  ? 'bg-red-100 text-red-700' :
      days <= 14 ? 'bg-orange-100 text-orange-700' :
                   'bg-gray-100 text-gray-500'
    const label = days < 0 ? `D+${Math.abs(days)}` : `D-${days}`
    return <span className={`text-xs px-1.5 py-0.5 rounded-full font-medium ${cls}`}>{label}</span>
  }

  return (
    <div>
      {/* 그룹 탭 */}
      <div className="flex gap-2 flex-wrap mb-4">
        {STATUS_GROUPS.map(g => {
          const count = orders.filter(o =>
            g.statuses.length === 0 || g.statuses.includes(o.status)
          ).length
          return (
            <button
              key={g.label}
              onClick={() => setGroupTab(g.label)}
              className={`px-4 py-2 rounded-xl text-sm font-medium transition-all ${
                groupTab === g.label
                  ? 'text-white shadow-sm'
                  : 'bg-white text-gray-600 border border-gray-200 hover:border-gray-300'
              }`}
              style={groupTab === g.label ? { backgroundColor: '#1a1a1a' } : {}}
            >
              {g.label} <span className="opacity-60 text-xs ml-1">({count})</span>
            </button>
          )
        })}
      </div>

      {/* 검색 + 필터 바 */}
      <div className="flex gap-2 flex-wrap mb-4">
        <div className="relative flex-1 min-w-40">
          <Search size={14} className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
          <input
            value={searchQuery}
            onChange={e => setSearchQuery(e.target.value)}
            placeholder="상품명 또는 코드 검색"
            className="w-full pl-8 pr-4 py-2 border border-gray-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 bg-white"
          />
        </div>
        <select value={categoryFilter} onChange={e => setCategoryFilter(e.target.value)}
          className="px-3 py-2 border border-gray-200 rounded-xl text-sm bg-white focus:outline-none">
          {categories.map(c => <option key={c} value={c}>{c === '전체' ? '전체 카테고리' : c}</option>)}
        </select>
        <select value={factoryFilter} onChange={e => setFactoryFilter(e.target.value)}
          className="px-3 py-2 border border-gray-200 rounded-xl text-sm bg-white focus:outline-none min-w-32">
          {factories.map(f => <option key={f} value={f}>{f === '전체' ? '전체 공장' : f}</option>)}
        </select>
        <button onClick={fetchOrders} className="p-2 border border-gray-200 rounded-xl hover:bg-gray-50">
          <RefreshCw size={14} className="text-gray-400" />
        </button>
        {isAdmin && (
          <button
            onClick={() => setEditMode(m => !m)}
            className={`flex items-center gap-1.5 px-3 py-2 rounded-xl text-sm font-medium border transition-all ${
              editMode
                ? 'bg-blue-50 border-blue-300 text-blue-700'
                : 'bg-white border-gray-200 text-gray-600 hover:border-gray-300'
            }`}
          >
            <CheckSquare size={14} />
            {editMode ? '편집 종료' : '편집'}
          </button>
        )}
      </div>

      {/* 편집 모드 액션 바 */}
      {editMode && (
        <div className="flex items-center gap-3 mb-3 px-4 py-2.5 bg-blue-50 rounded-xl border border-blue-200">
          <input
            ref={selectAllRef}
            type="checkbox"
            checked={allFilteredSelected}
            onChange={toggleSelectAll}
            className="w-4 h-4 rounded accent-blue-600"
          />
          <span className="text-sm text-blue-700 flex-1">
            {selectedIds.size > 0
              ? `${selectedIds.size}건 선택됨`
              : `전체 선택 (${filtered.length}건)`}
          </span>
          {selectedIds.size > 0 && (
            <button
              onClick={handleBulkDelete}
              disabled={bulkDeleting}
              className="flex items-center gap-1.5 px-3 py-1.5 bg-red-500 hover:bg-red-600 text-white text-sm font-semibold rounded-lg transition-colors disabled:opacity-50"
            >
              <Trash2 size={13} />
              {bulkDeleting ? '삭제 중...' : `${selectedIds.size}건 삭제`}
            </button>
          )}
        </div>
      )}

      <p className="text-xs text-gray-400 mb-3">총 {filtered.length}건</p>

      {/* 테이블 헤더 (데스크탑) */}
      <div
        className="hidden lg:grid bg-gray-100 rounded-xl px-4 py-2.5 mb-2 text-xs font-semibold text-gray-400 uppercase tracking-wide gap-3"
        style={{ gridTemplateColumns: editMode ? '32px 52px 60px minmax(160px,2fr) 100px 100px 90px minmax(80px,0.8fr) 100px 90px 130px 90px 110px 60px' : '52px 60px minmax(160px,2fr) 100px 100px 90px minmax(80px,0.8fr) 100px 90px 130px 90px 110px 60px' }}
      >
        {editMode && <div />}
        <div />
        <div>차수</div>
        <div>상품명 / 코드</div>
        <div>컬러</div>
        <div>발주수량</div>
        <div>입고수량</div>
        <div>잔량</div>
        <div>생산처</div>
        <div>예상납기</div>
        <div>부자재</div>
        <div>계약금</div>
        <div>상태</div>
        <div />
      </div>

      {/* 발주 리스트 */}
      {loading ? (
        <div className="space-y-2">
          {[...Array(5)].map((_, i) => (
            <div key={i} className="bg-white rounded-xl h-16 animate-pulse border border-gray-100" />
          ))}
        </div>
      ) : filtered.length === 0 ? (
        <div className="text-center py-20 text-gray-400">
          <Package size={40} className="mx-auto mb-3 opacity-30" />
          <p className="text-sm">발주 내역이 없습니다.</p>
        </div>
      ) : (
        <div className="space-y-1.5">
          {filtered.map(order => {
            const isSelected = selectedIds.has(order.id)
            return (
              <div
                key={order.id}
                onClick={() => editMode ? setSelectedIds(prev => { const n = new Set(prev); n.has(order.id) ? n.delete(order.id) : n.add(order.id); return n }) : setDetailOrder(order)}
                className={`bg-white rounded-xl border shadow-sm transition-all cursor-pointer px-4 py-3 ${
                  isSelected ? 'border-gray-400 bg-gray-50' : 'border-gray-100 hover:border-gray-200 hover:shadow-md'
                }`}
              >
                {/* 데스크탑 한 줄 레이아웃 */}
                <div
                  className="hidden lg:grid items-center gap-3"
                  style={{ gridTemplateColumns: editMode ? '32px 52px 60px minmax(160px,2fr) 100px 100px 90px minmax(80px,0.8fr) 100px 90px 130px 90px 110px 60px' : '52px 60px minmax(160px,2fr) 100px 100px 90px minmax(80px,0.8fr) 100px 90px 130px 90px 110px 60px' }}
                >
                  {/* 체크박스 (편집 모드) */}
                  {editMode && (
                    <div onClick={e => toggleSelect(order.id, e)}>
                      <input
                        type="checkbox"
                        checked={isSelected}
                        onChange={() => {}}
                        className="w-4 h-4 rounded accent-blue-600"
                      />
                    </div>
                  )}

                  {/* 이미지 */}
                  <div onClick={e => e.stopPropagation()}>
                    {order.imageUrl ? (
                      <img src={order.imageUrl} alt={order.productName}
                        className="w-12 h-12 rounded-lg object-cover border border-gray-100 flex-shrink-0" />
                    ) : (
                      <div className="w-12 h-12 rounded-lg bg-gray-100 flex items-center justify-center flex-shrink-0">
                        <Package size={16} className="text-gray-400" />
                      </div>
                    )}
                  </div>

                  {/* 차수 */}
                  <div>
                    {order.orderRound ? (
                      <span className="inline-block bg-gray-100 text-gray-700 text-xs px-2 py-1 rounded-lg font-bold whitespace-nowrap">
                        {order.orderRound}
                      </span>
                    ) : (
                      <span className="text-gray-300 text-xs">-</span>
                    )}
                  </div>

                  {/* 상품명 / 코드 */}
                  <div className="min-w-0">
                    <p className="text-sm font-semibold text-gray-800 leading-snug break-words whitespace-normal line-clamp-2">
                      {order.productName}
                    </p>
                    <p className="text-xs text-gray-400 font-mono mt-0.5">{order.productCode}</p>
                  </div>

                  {/* 컬러 */}
                  <div>
                    <span className="inline-block bg-gray-100 text-gray-600 text-xs px-2 py-1 rounded-lg font-medium break-words">
                      {order.colorName}
                    </span>
                  </div>

                  {/* 발주수량 */}
                  <div className="text-sm font-bold text-gray-800 whitespace-nowrap">
                    {order.orderQty.toLocaleString()}
                    <span className="text-xs text-gray-400 font-normal ml-0.5">개</span>
                  </div>

                  {/* 입고수량 */}
                  <div className="text-sm font-bold whitespace-nowrap">
                    <span className={(order.warehouseQty || 0) > 0 ? 'text-emerald-600' : 'text-gray-300'}>
                      {(order.warehouseQty || 0).toLocaleString()}
                    </span>
                    <span className="text-xs text-gray-400 font-normal ml-0.5">개</span>
                  </div>

                  {/* 잔량 */}
                  <div className="whitespace-nowrap">
                    {(() => {
                      const remain = order.orderQty - (order.warehouseQty || 0)
                      if (remain < 0) return (
                        <span className="text-xs font-bold text-amber-500">+{Math.abs(remain).toLocaleString()} 초과</span>
                      )
                      if (remain === 0) return (
                        <span className="text-xs font-bold text-emerald-500">완료</span>
                      )
                      return (
                        <span className="text-sm font-bold text-gray-500">
                          {remain.toLocaleString()}
                          <span className="text-xs font-normal ml-0.5">개</span>
                        </span>
                      )
                    })()}
                  </div>

                  {/* 생산처 */}
                  <div className="text-xs text-gray-600 break-words leading-snug">{order.factory}</div>

                  {/* 예상납기 */}
                  <div className="space-y-0.5">
                    <p className="text-xs text-gray-500 whitespace-nowrap">{order.expectedDeliveryDate || '-'}</p>
                    {order.expectedDeliveryDate && getDaysBadge(order.expectedDeliveryDate)}
                  </div>

                  {/* 부자재 */}
                  <div onClick={e => e.stopPropagation()}>
                    <MaterialChecklist
                      orderId={order.id}
                      materials={order.materials}
                      onChange={m => handleUpdate(order.id, { materials: m })}
                      compact
                    />
                  </div>

                  {/* 계약금 */}
                  <div onClick={e => e.stopPropagation()}>
                    {order.factoryPaymentType === '계약금선납' ? (
                      <button
                        onClick={e => toggleDepositPaid(order, e)}
                        className={`flex items-center gap-1 text-xs px-2 py-1.5 rounded-lg border transition-all whitespace-nowrap ${
                          order.contractDepositPaid
                            ? 'bg-green-50 border-green-300 text-green-700 hover:bg-green-100'
                            : 'bg-orange-50 border-orange-300 text-orange-700 hover:bg-orange-100'
                        }`}
                      >
                        <CreditCard size={11} />
                        {order.contractDepositPaid ? '송금완료' : '대기중'}
                      </button>
                    ) : (
                      <span className="text-xs text-gray-300">-</span>
                    )}
                  </div>

                  {/* 상태 */}
                  <div onClick={e => e.stopPropagation()}>
                    <select
                      value={order.status}
                      onChange={e => updateStatus(order.id, e.target.value as OrderStatus, e)}
                      onClick={e => e.stopPropagation()}
                      className="text-xs border border-gray-200 rounded-lg px-2 py-1.5 focus:outline-none focus:ring-1 focus:ring-blue-200 bg-white w-full"
                    >
                      {ORDER_STATUSES.map(s => <option key={s} value={s}>{s}</option>)}
                    </select>
                  </div>

                  {/* 수정/삭제 */}
                  <div className="flex gap-1 justify-end">
                    <button
                      onClick={e => openEdit(order, e)}
                      className="p-1.5 rounded-lg text-blue-400 hover:text-blue-600 hover:bg-blue-50"
                    >
                      <Pencil size={13} />
                    </button>
                    {isAdmin && (
                      <button
                        onClick={e => handleDelete(order.id, e)}
                        className="p-1.5 rounded-lg text-red-400 hover:text-red-600 hover:bg-red-50"
                      >
                        <Trash2 size={13} />
                      </button>
                    )}
                  </div>
                </div>

                {/* 모바일 레이아웃 */}
                <div className="lg:hidden space-y-2">
                  <div className="flex items-start gap-3">
                    {editMode && (
                      <div className="flex-shrink-0 pt-1" onClick={e => toggleSelect(order.id, e)}>
                        <input type="checkbox" checked={isSelected} onChange={() => {}} className="w-4 h-4 rounded accent-blue-600" />
                      </div>
                    )}
                    {order.imageUrl ? (
                      <img src={order.imageUrl} alt={order.productName} className="w-12 h-12 rounded-lg object-cover flex-shrink-0" />
                    ) : (
                      <div className="w-12 h-12 rounded-lg bg-gray-100 flex items-center justify-center flex-shrink-0">
                        <Package size={16} className="text-gray-400" />
                      </div>
                    )}
                    <div className="flex-1 min-w-0">
                      <p className="text-sm font-semibold text-gray-800 leading-snug">{order.productName}</p>
                      <p className="text-xs text-gray-400 mt-0.5">{order.productCode}</p>
                      <div className="flex gap-1.5 mt-1 flex-wrap">
                        {order.orderRound && (
                          <span className="bg-gray-100 text-gray-700 text-xs px-2 py-0.5 rounded-full font-bold">
                            {order.orderRound}
                          </span>
                        )}
                        <span className="bg-gray-100 text-gray-600 text-xs px-2 py-0.5 rounded-full">{order.colorName}</span>
                        <span className="bg-gray-100 text-gray-700 text-xs px-2 py-0.5 rounded-full font-medium">
                          발주 {order.orderQty.toLocaleString()}
                        </span>
                        {(order.warehouseQty || 0) > 0 && (
                          <span className="bg-emerald-50 text-emerald-600 text-xs px-2 py-0.5 rounded-full font-medium">
                            입고 {(order.warehouseQty || 0).toLocaleString()}
                          </span>
                        )}
                        {(() => {
                          const remain = order.orderQty - (order.warehouseQty || 0)
                          if (remain > 0) return (
                            <span className="bg-gray-50 text-gray-500 text-xs px-2 py-0.5 rounded-full">
                              잔 {remain.toLocaleString()}
                            </span>
                          )
                          if (remain < 0) return (
                            <span className="bg-amber-50 text-amber-600 text-xs px-2 py-0.5 rounded-full font-bold">
                              +{Math.abs(remain).toLocaleString()} 초과
                            </span>
                          )
                          return <span className="bg-emerald-50 text-emerald-600 text-xs px-2 py-0.5 rounded-full font-bold">완료</span>
                        })()}
                        <StatusBadge status={order.status} />
                      </div>
                    </div>
                    <div className="flex gap-1 flex-shrink-0" onClick={e => e.stopPropagation()}>
                      <button onClick={e => openEdit(order, e)} className="p-1.5 text-blue-400 hover:bg-blue-50 rounded-lg"><Pencil size={13} /></button>
                      {isAdmin && <button onClick={e => handleDelete(order.id, e)} className="p-1.5 text-red-400 hover:bg-red-50 rounded-lg"><Trash2 size={13} /></button>}
                    </div>
                  </div>
                  <div className="flex gap-3 text-xs text-gray-500 flex-wrap">
                    <span>🏭 {order.factory}</span>
                    <span>📅 {order.expectedDeliveryDate || '-'}</span>
                    {order.expectedDeliveryDate && getDaysBadge(order.expectedDeliveryDate)}
                  </div>
                  <div onClick={e => e.stopPropagation()}>
                    <MaterialChecklist orderId={order.id} materials={order.materials} onChange={m => handleUpdate(order.id, { materials: m })} compact />
                  </div>
                  <div className="flex gap-2 items-center" onClick={e => e.stopPropagation()}>
                    {order.factoryPaymentType === '계약금선납' && (
                      <button
                        onClick={e => toggleDepositPaid(order, e)}
                        className={`text-xs px-2 py-1 rounded-lg border flex items-center gap-1 ${
                          order.contractDepositPaid
                            ? 'bg-green-50 border-green-300 text-green-700'
                            : 'bg-orange-50 border-orange-300 text-orange-700'
                        }`}
                      >
                        <CreditCard size={10} />{order.contractDepositPaid ? '송금완료' : '대기중'}
                      </button>
                    )}
                    <select
                      value={order.status}
                      onChange={e => { e.stopPropagation(); updateStatus(order.id, e.target.value as OrderStatus, e) }}
                      onClick={e => e.stopPropagation()}
                      className="text-xs border border-gray-200 rounded-lg px-2 py-1 focus:outline-none bg-white flex-1"
                    >
                      {ORDER_STATUSES.map(s => <option key={s} value={s}>{s}</option>)}
                    </select>
                  </div>
                </div>
              </div>
            )
          })}
        </div>
      )}

      {/* 하단 합계 바 */}
      {filtered.length > 0 && (
        <div className="mt-5 flex justify-end">
          <div className="bg-white border border-gray-200 rounded-2xl px-6 py-4 shadow-sm flex items-center gap-6 flex-wrap text-sm">
            <div className="text-center">
              <p className="text-xs text-gray-400 mb-1">조회 건수</p>
              <p className="text-lg font-bold text-gray-900">{filtered.length}<span className="text-sm font-normal text-gray-400 ml-1">건</span></p>
            </div>
            <div className="w-px h-8 bg-gray-200" />
            <div className="text-center">
              <p className="text-xs text-gray-400 mb-1">전체 발주수량</p>
              <p className="text-lg font-bold text-gray-900">
                {filtered.reduce((s, o) => s + o.orderQty, 0).toLocaleString()}
                <span className="text-sm font-normal text-gray-400 ml-1">개</span>
              </p>
            </div>
            <div className="w-px h-8 bg-gray-200" />
            <div className="text-center">
              <p className="text-xs text-gray-400 mb-1">총 입고수량</p>
              <p className="text-lg font-bold text-emerald-600">
                {filtered.reduce((s, o) => s + (o.warehouseQty || 0), 0).toLocaleString()}
                <span className="text-sm font-normal text-gray-400 ml-1">개</span>
              </p>
            </div>
            <div className="w-px h-8 bg-gray-200" />
            <div className="text-center">
              <p className="text-xs text-gray-400 mb-1">총 잔량</p>
              <p className="text-lg font-bold text-amber-500">
                {Math.max(0, filtered.reduce((s, o) => s + o.orderQty - (o.warehouseQty || 0), 0)).toLocaleString()}
                <span className="text-sm font-normal text-gray-400 ml-1">개</span>
              </p>
            </div>
          </div>
        </div>
      )}

      {/* 발주 수정 모달 */}
      {editingOrder && (
        <OrderEditModal
          order={editingOrder}
          onClose={() => setEditingOrder(null)}
          onSaved={updated => { handleUpdate(updated.id, updated); setEditingOrder(null) }}
        />
      )}

      {/* 발주 상세 팝업 */}
      {detailOrder && (
        <OrderDetailModal
          order={detailOrder}
          onClose={() => setDetailOrder(null)}
          onUpdated={updated => {
            handleUpdate(updated.id, updated)
            setDetailOrder(updated)
          }}
        />
      )}
    </div>
  )
}
