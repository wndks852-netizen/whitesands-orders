'use client'
import { useEffect, useState, useCallback } from 'react'
import { Plus, Pencil, Trash2, Package, Search, ChevronFirst, ChevronLast, ChevronLeft, ChevronRight } from 'lucide-react'
import { supabase, rowToProduct } from '@/lib/supabase'
import { Product } from '@/lib/types'
import ProductFormModal from '@/components/ProductFormModal'

export default function AdminProductsPage() {
  const [products, setProducts] = useState<Product[]>([])
  const [loading, setLoading] = useState(true)
  const [modalOpen, setModalOpen] = useState(false)
  const [editing, setEditing] = useState<Product | null>(null)
  const [searchQuery, setSearchQuery] = useState('')
  const [page, setPage] = useState(0)
  const [totalCount, setTotalCount] = useState(0)
  const PAGE_SIZE = 50

  const fetchProducts = useCallback(async () => {
    setLoading(true)

    // 전체 카운트
    let countQuery = supabase.from('products').select('*', { count: 'exact', head: true })
    if (searchQuery.trim()) {
      countQuery = countQuery.or(`product_name.ilike.%${searchQuery}%,product_code.ilike.%${searchQuery}%`)
    }
    const { count } = await countQuery
    setTotalCount(count ?? 0)

    // 데이터
    let dataQuery = supabase
      .from('products')
      .select('*')
      .order('created_at', { ascending: false })
    if (searchQuery.trim()) {
      dataQuery = dataQuery.or(`product_name.ilike.%${searchQuery}%,product_code.ilike.%${searchQuery}%`)
    }
    const { data } = await dataQuery.range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1)
    if (data) setProducts(data.map(rowToProduct))
    setLoading(false)
  }, [searchQuery, page])

  useEffect(() => { fetchProducts() }, [fetchProducts])

  const handleDelete = async (id: string) => {
    if (!confirm('상품을 삭제하시겠습니까?')) return
    await supabase.from('products').delete().eq('id', id)
    fetchProducts()
  }

  const openEdit = (p: Product) => { setEditing(p); setModalOpen(true) }
  const openNew = () => { setEditing(null); setModalOpen(true) }

  const totalPages = Math.max(1, Math.ceil(totalCount / PAGE_SIZE))
  const startItem = totalCount === 0 ? 0 : page * PAGE_SIZE + 1
  const endItem = Math.min((page + 1) * PAGE_SIZE, totalCount)

  // 페이지 버튼 목록 (최대 7개)
  const getPageNumbers = () => {
    const range: (number | 'ellipsis')[] = []
    if (totalPages <= 7) {
      for (let i = 0; i < totalPages; i++) range.push(i)
    } else {
      range.push(0)
      if (page > 3) range.push('ellipsis')
      const start = Math.max(1, page - 2)
      const end = Math.min(totalPages - 2, page + 2)
      for (let i = start; i <= end; i++) range.push(i)
      if (page < totalPages - 4) range.push('ellipsis')
      range.push(totalPages - 1)
    }
    return range
  }

  return (
    <div>
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-xl font-bold" style={{ color: '#1B2A4A' }}>상품 관리</h1>
        <button onClick={openNew}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl text-sm font-semibold text-white"
          style={{ backgroundColor: '#1B2A4A' }}>
          <Plus size={16} /> 상품 등록
        </button>
      </div>

      {/* 검색 */}
      <div className="relative mb-4">
        <Search size={14} className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
        <input
          value={searchQuery}
          onChange={e => { setSearchQuery(e.target.value); setPage(0) }}
          placeholder="상품명 또는 코드로 검색..."
          className="w-full pl-9 pr-4 py-2.5 border border-gray-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 bg-white"
        />
      </div>

      {/* 카운트 정보 */}
      {!loading && (
        <p className="text-xs text-gray-400 mb-3">
          전체 {totalCount.toLocaleString()}개
          {totalCount > 0 && ` · ${startItem}–${endItem} 표시`}
        </p>
      )}

      {loading ? (
        <div className="text-center py-12 text-gray-400">로딩 중...</div>
      ) : (
        <div className="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">
          <table className="w-full text-sm">
            <thead className="bg-gray-50 text-gray-500 text-xs">
              <tr>
                {['이미지', '카테고리', '상품코드', '상품명 / 컬러', ''].map(h => (
                  <th key={h} className="px-4 py-3 text-left font-medium">{h}</th>
                ))}
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-50">
              {products.map(p => (
                <tr
                  key={p.id}
                  className="hover:bg-gray-50 cursor-pointer"
                  onClick={() => openEdit(p)}
                >
                  <td className="px-4 py-3" onClick={e => e.stopPropagation()}>
                    {p.imageUrl
                      ? <img src={p.imageUrl} alt={p.productName} className="w-10 h-10 rounded-lg object-cover" />
                      : <div className="w-10 h-10 rounded-lg bg-gray-100 flex items-center justify-center">
                          <Package size={14} className="text-gray-400" />
                        </div>
                    }
                  </td>
                  <td className="px-4 py-3">
                    <span className="bg-gray-100 text-gray-700 px-2 py-0.5 rounded-full text-xs">{p.category}</span>
                  </td>
                  <td className="px-4 py-3 text-gray-500 font-mono text-xs">{p.productCode}</td>
                  <td className="px-4 py-3 text-gray-800 max-w-sm">
                    <p className="font-medium truncate">{p.productName}</p>
                    <div className="flex flex-wrap gap-1 mt-1">
                      {p.colors.slice(0, 5).map(c => (
                        <span key={c.colorCode} className="bg-purple-50 text-purple-700 text-xs px-1.5 py-0.5 rounded-full">
                          {c.colorName}
                        </span>
                      ))}
                      {p.colors.length > 5 && (
                        <span className="text-xs text-gray-400">+{p.colors.length - 5}</span>
                      )}
                    </div>
                  </td>
                  <td className="px-4 py-3" onClick={e => e.stopPropagation()}>
                    <div className="flex gap-2">
                      <button onClick={() => openEdit(p)}
                        className="p-1.5 text-blue-400 hover:text-blue-600 hover:bg-blue-50 rounded-lg">
                        <Pencil size={14} />
                      </button>
                      <button onClick={() => handleDelete(p.id)}
                        className="p-1.5 text-red-400 hover:text-red-600 hover:bg-red-50 rounded-lg">
                        <Trash2 size={14} />
                      </button>
                    </div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>

          {products.length === 0 && (
            <div className="text-center py-12 text-gray-400">
              <Package size={32} className="mx-auto mb-2 opacity-30" />
              <p className="text-sm">{searchQuery ? '검색 결과가 없습니다.' : '등록된 상품이 없습니다.'}</p>
            </div>
          )}
        </div>
      )}

      {/* 페이지네이션 */}
      {totalPages > 1 && (
        <div className="flex items-center justify-center gap-1 mt-4 flex-wrap">
          <button
            onClick={() => setPage(0)}
            disabled={page === 0}
            className="p-2 border border-gray-200 rounded-lg text-gray-500 hover:bg-gray-50 disabled:opacity-30 disabled:cursor-not-allowed"
            title="처음"
          >
            <ChevronFirst size={14} />
          </button>
          <button
            onClick={() => setPage(p => Math.max(0, p - 1))}
            disabled={page === 0}
            className="p-2 border border-gray-200 rounded-lg text-gray-500 hover:bg-gray-50 disabled:opacity-30 disabled:cursor-not-allowed"
            title="이전"
          >
            <ChevronLeft size={14} />
          </button>

          {getPageNumbers().map((n, i) =>
            n === 'ellipsis' ? (
              <span key={`e-${i}`} className="px-2 text-gray-400 text-sm">…</span>
            ) : (
              <button
                key={n}
                onClick={() => setPage(n as number)}
                className={`w-8 h-8 rounded-lg text-sm font-medium border transition-all ${
                  page === n
                    ? 'text-white border-transparent shadow-sm'
                    : 'bg-white border-gray-200 text-gray-600 hover:border-gray-300'
                }`}
                style={page === n ? { backgroundColor: '#1B2A4A' } : {}}
              >
                {(n as number) + 1}
              </button>
            )
          )}

          <button
            onClick={() => setPage(p => Math.min(totalPages - 1, p + 1))}
            disabled={page >= totalPages - 1}
            className="p-2 border border-gray-200 rounded-lg text-gray-500 hover:bg-gray-50 disabled:opacity-30 disabled:cursor-not-allowed"
            title="다음"
          >
            <ChevronRight size={14} />
          </button>
          <button
            onClick={() => setPage(totalPages - 1)}
            disabled={page >= totalPages - 1}
            className="p-2 border border-gray-200 rounded-lg text-gray-500 hover:bg-gray-50 disabled:opacity-30 disabled:cursor-not-allowed"
            title="마지막"
          >
            <ChevronLast size={14} />
          </button>
        </div>
      )}

      {modalOpen && (
        <ProductFormModal
          product={editing}
          onClose={() => { setModalOpen(false); setEditing(null) }}
          onSaved={fetchProducts}
        />
      )}
    </div>
  )
}
