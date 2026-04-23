'use client'
import { useState, useEffect, useRef } from 'react'
import { Search, X } from 'lucide-react'
import { supabase, rowToProduct } from '@/lib/supabase'
import { Product } from '@/lib/types'

interface Props {
  onSelect: (product: Product) => void
  placeholder?: string
}

export default function ProductSearchInput({ onSelect, placeholder = '상품명 또는 코드 검색...' }: Props) {
  const [query, setQuery] = useState('')
  const [results, setResults] = useState<Product[]>([])
  const [loading, setLoading] = useState(false)
  const [open, setOpen] = useState(false)
  const ref = useRef<HTMLDivElement>(null)

  useEffect(() => {
    if (!query.trim()) { setResults([]); return }
    const timer = setTimeout(async () => {
      setLoading(true)
      const { data } = await supabase
        .from('products')
        .select('*')
        .or(`product_name.ilike.%${query}%,product_code.ilike.%${query}%`)
        .limit(10)
      setResults(data ? data.map(rowToProduct) : [])
      setLoading(false)
      setOpen(true)
    }, 300)
    return () => clearTimeout(timer)
  }, [query])

  useEffect(() => {
    const handler = (e: MouseEvent) => {
      if (ref.current && !ref.current.contains(e.target as Node)) setOpen(false)
    }
    document.addEventListener('mousedown', handler)
    return () => document.removeEventListener('mousedown', handler)
  }, [])

  const handleSelect = (p: Product) => {
    onSelect(p)
    setQuery(p.productName)
    setOpen(false)
  }

  return (
    <div ref={ref} className="relative">
      <div className="relative">
        <Search size={16} className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
        <input
          value={query}
          onChange={e => setQuery(e.target.value)}
          onFocus={() => results.length > 0 && setOpen(true)}
          placeholder={placeholder}
          className="w-full pl-9 pr-9 py-3 border border-gray-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-blue-200"
        />
        {query && (
          <button onClick={() => { setQuery(''); setResults([]) }} className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-gray-600">
            <X size={14} />
          </button>
        )}
      </div>
      {open && results.length > 0 && (
        <div className="absolute z-30 w-full mt-1 bg-white border border-gray-200 rounded-xl shadow-xl overflow-hidden max-h-80 overflow-y-auto">
          {loading && <div className="px-4 py-3 text-sm text-gray-400">검색 중...</div>}
          {results.map(p => (
            <button
              key={p.id}
              onClick={() => handleSelect(p)}
              className="w-full flex items-center gap-3 px-4 py-3 hover:bg-gray-50 text-left border-b border-gray-50 last:border-0"
            >
              {p.imageUrl ? (
                <img src={p.imageUrl} alt={p.productName} className="w-10 h-10 rounded-lg object-cover flex-shrink-0" />
              ) : (
                <div className="w-10 h-10 rounded-lg bg-gray-100 flex items-center justify-center flex-shrink-0 text-gray-400 text-xs">No</div>
              )}
              <div className="min-w-0">
                <div className="text-sm font-medium text-gray-800 truncate">{p.productName}</div>
                <div className="text-xs text-gray-400">{p.productCode}</div>
              </div>
            </button>
          ))}
        </div>
      )}
      {open && !loading && results.length === 0 && query && (
        <div className="absolute z-30 w-full mt-1 bg-white border border-gray-200 rounded-xl shadow-xl px-4 py-3 text-sm text-gray-400">
          검색 결과가 없습니다.
        </div>
      )}
    </div>
  )
}
