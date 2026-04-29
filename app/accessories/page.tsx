'use client'
import { useEffect, useState } from 'react'
import { supabase, rowToAccessory } from '@/lib/supabase'
import { Accessory, AccessoryCategory } from '@/lib/types'
import { Search, Package, AlertTriangle } from 'lucide-react'

const ACCESSORY_CATEGORIES: AccessoryCategory[] = ['라벨류', '포장재', '원단', '장식', '기타']

export default function AccessoriesPage() {
  const [accessories, setAccessories] = useState<Accessory[]>([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')
  const [categoryFilter, setCategoryFilter] = useState<string>('전체')

  useEffect(() => {
    const fetchData = async () => {
      const { data } = await supabase
        .from('accessories')
        .select('*')
        .order('category')
        .order('name')
      if (data) setAccessories(data.map(rowToAccessory))
      setLoading(false)
    }
    fetchData()
  }, [])

  const filtered = accessories.filter(a => {
    if (categoryFilter !== '전체' && a.category !== categoryFilter) return false
    if (search) {
      const q = search.toLowerCase()
      return a.name.toLowerCase().includes(q) || a.supplier.toLowerCase().includes(q)
    }
    return true
  })

  const lowStock = accessories.filter(a => a.safetyQty > 0 && a.stockQty <= a.safetyQty)

  return (
    <div>
      <div className="flex items-center justify-between mb-6">
        <h1 className="text-xl font-bold" style={{ color: '#1B2A4A' }}>부자재 현황</h1>
      </div>

      {/* 안전재고 경고 */}
      {lowStock.length > 0 && (
        <div className="mb-4 bg-orange-50 border border-orange-200 rounded-xl px-4 py-3 flex items-center gap-2">
          <AlertTriangle size={16} className="text-orange-500 flex-shrink-0" />
          <span className="text-sm text-orange-700 font-medium">
            안전재고 미달 {lowStock.length}개: {lowStock.map(a => a.name).join(', ')}
          </span>
        </div>
      )}

      {/* 필터 */}
      <div className="flex gap-2 flex-wrap mb-5">
        {(['전체', ...ACCESSORY_CATEGORIES] as string[]).map(cat => (
          <button key={cat} onClick={() => setCategoryFilter(cat)}
            className={`px-3 py-1.5 rounded-xl text-sm font-medium transition-all ${
              categoryFilter === cat
                ? 'text-white'
                : 'bg-white border border-gray-200 text-gray-600 hover:border-gray-300'
            }`}
            style={categoryFilter === cat ? { backgroundColor: '#1B2A4A' } : {}}>
            {cat}
          </button>
        ))}
        <div className="relative ml-auto">
          <Search size={14} className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
          <input value={search} onChange={e => setSearch(e.target.value)}
            placeholder="부자재명 검색"
            className="pl-8 pr-4 py-1.5 border border-gray-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 bg-white" />
        </div>
      </div>

      {/* 부자재 그리드 */}
      {loading ? (
        <div className="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-3">
          {[...Array(12)].map((_, i) => <div key={i} className="bg-white rounded-xl h-40 animate-pulse" />)}
        </div>
      ) : filtered.length === 0 ? (
        <div className="text-center py-20 text-gray-400">
          <Package size={40} className="mx-auto mb-3 opacity-30" />
          <p className="text-sm">부자재가 없습니다.</p>
        </div>
      ) : (
        <div className="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-3">
          {filtered.map(acc => (
            <div key={acc.id}
              className={`bg-white rounded-xl border shadow-sm p-3 flex flex-col gap-2 ${
                acc.safetyQty > 0 && acc.stockQty <= acc.safetyQty
                  ? 'border-orange-300'
                  : 'border-gray-100'
              }`}>
              {acc.imageUrl ? (
                <img src={acc.imageUrl} alt={acc.name}
                  className="w-full aspect-square object-cover rounded-lg" />
              ) : (
                <div className="w-full aspect-square bg-gray-100 rounded-lg flex items-center justify-center">
                  <Package size={24} className="text-gray-400" />
                </div>
              )}
              <div>
                <p className="text-xs font-semibold text-gray-800 leading-tight line-clamp-2">{acc.name}</p>
                {acc.spec && <p className="text-xs text-gray-400 mt-0.5">{acc.spec}</p>}
              </div>
              <div className="mt-auto space-y-1">
                <div className="flex justify-between items-center">
                  <span className="text-xs text-gray-400">재고</span>
                  <span className={`text-sm font-bold ${
                    acc.safetyQty > 0 && acc.stockQty <= acc.safetyQty
                      ? 'text-orange-500'
                      : 'text-gray-800'
                  }`}>
                    {acc.stockQty.toLocaleString()} {acc.unit}
                  </span>
                </div>
                {acc.safetyQty > 0 && (
                  <div className="flex justify-between items-center">
                    <span className="text-xs text-gray-400">안전재고</span>
                    <span className="text-xs text-gray-500">{acc.safetyQty.toLocaleString()} {acc.unit}</span>
                  </div>
                )}
                <span className="inline-block bg-gray-100 text-gray-500 text-xs px-1.5 py-0.5 rounded-full">
                  {acc.category}
                </span>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  )
}
