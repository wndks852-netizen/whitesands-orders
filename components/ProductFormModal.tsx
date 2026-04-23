'use client'
import { useState } from 'react'
import { X, Plus, Minus } from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { Product, Color, Category } from '@/lib/types'
import { CATEGORIES, ALL_MATERIALS } from '@/lib/constants'
import ImageUploader from './ImageUploader'

interface Props {
  product?: Product | null
  onClose: () => void
  onSaved: () => void
}

export default function ProductFormModal({ product, onClose, onSaved }: Props) {
  const [form, setForm] = useState({
    brand: product?.brand || '화이트샌즈',
    category: product?.category || '모자' as Category,
    productCode: product?.productCode || '',
    productName: product?.productName || '',
    imageUrl: product?.imageUrl || '',
    colors: product?.colors || [{ colorCode: '', colorName: '' }] as Color[],
    requiredMaterials: product?.requiredMaterials || ['원단', '메인라벨', '케어라벨', '행택', '지퍼백'],
    size: product?.size || 'ONE SIZE',
  })
  const [saving, setSaving] = useState(false)

  const toggleMaterial = (m: string) => {
    setForm(f => ({
      ...f,
      requiredMaterials: f.requiredMaterials.includes(m)
        ? f.requiredMaterials.filter(x => x !== m)
        : [...f.requiredMaterials, m]
    }))
  }

  const updateColor = (i: number, field: keyof Color, value: string) => {
    const colors = [...form.colors]
    colors[i] = { ...colors[i], [field]: value }
    setForm(f => ({ ...f, colors }))
  }

  const handleSave = async () => {
    if (!form.productCode || !form.productName) return
    setSaving(true)
    const row = {
      brand: form.brand,
      category: form.category,
      product_code: form.productCode,
      product_name: form.productName,
      image_url: form.imageUrl || null,
      colors: form.colors.filter(c => c.colorName),
      required_materials: form.requiredMaterials,
      size: form.size,
    }
    if (product) {
      await supabase.from('products').update(row).eq('id', product.id)
    } else {
      await supabase.from('products').insert(row)
    }
    setSaving(false)
    onSaved()
    onClose()
  }

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 p-4">
      <div className="bg-white rounded-2xl shadow-2xl w-full max-w-xl max-h-[90vh] overflow-y-auto">
        <div className="sticky top-0 bg-white px-6 py-4 border-b border-gray-100 flex justify-between items-center">
          <h2 className="text-lg font-bold" style={{ color: '#1B2A4A' }}>
            {product ? '상품 수정' : '상품 등록'}
          </h2>
          <button onClick={onClose}><X size={20} className="text-gray-400" /></button>
        </div>

        <div className="p-6 space-y-4">
          {/* 이미지 */}
          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-2">상품 이미지</label>
            <ImageUploader
              currentImageUrl={form.imageUrl}
              productCode={form.productCode || 'new'}
              onUploaded={url => setForm(f => ({ ...f, imageUrl: url }))}
            />
          </div>

          {/* 기본 정보 */}
          <div className="grid grid-cols-2 gap-3">
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">브랜드</label>
              <select value={form.brand} onChange={e => setForm(f => ({ ...f, brand: e.target.value }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                {['화이트샌즈', '블랙샌즈', '기타'].map(b => <option key={b} value={b}>{b}</option>)}
              </select>
            </div>
            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">카테고리</label>
              <select value={form.category} onChange={e => setForm(f => ({ ...f, category: e.target.value as Category }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                {CATEGORIES.map(c => <option key={c} value={c}>{c}</option>)}
              </select>
            </div>
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">상품코드 *</label>
            <input value={form.productCode} onChange={e => setForm(f => ({ ...f, productCode: e.target.value }))}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" placeholder="예: GKS35C8H" />
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">상품명 *</label>
            <input value={form.productName} onChange={e => setForm(f => ({ ...f, productName: e.target.value }))}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" placeholder="상품명 입력" />
          </div>

          {/* 컬러 관리 */}
          <div>
            <div className="flex justify-between items-center mb-2">
              <label className="text-xs font-semibold text-gray-500">컬러</label>
              <button onClick={() => setForm(f => ({ ...f, colors: [...f.colors, { colorCode: '', colorName: '' }] }))}
                className="text-xs text-blue-600 hover:underline flex items-center gap-1">
                <Plus size={12} /> 추가
              </button>
            </div>
            <div className="space-y-2">
              {form.colors.map((c, i) => (
                <div key={i} className="flex gap-2">
                  <input value={c.colorCode} onChange={e => updateColor(i, 'colorCode', e.target.value)}
                    placeholder="코드 (BK)" className="w-24 border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                  <input value={c.colorName} onChange={e => updateColor(i, 'colorName', e.target.value)}
                    placeholder="컬러명 (블랙)" className="flex-1 border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                  {form.colors.length > 1 && (
                    <button onClick={() => setForm(f => ({ ...f, colors: f.colors.filter((_, j) => j !== i) }))}
                      className="p-2 text-red-400 hover:text-red-600"><Minus size={14} /></button>
                  )}
                </div>
              ))}
            </div>
          </div>

          {/* 부자재 */}
          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-2">필요 부자재</label>
            <div className="flex flex-wrap gap-2">
              {ALL_MATERIALS.map(m => (
                <button key={m} onClick={() => toggleMaterial(m)}
                  className={`px-3 py-1.5 rounded-xl text-xs font-medium border transition-all ${
                    form.requiredMaterials.includes(m)
                      ? 'border-blue-400 bg-blue-50 text-blue-700'
                      : 'border-gray-200 text-gray-500 hover:border-gray-300'
                  }`}>
                  {m}
                </button>
              ))}
            </div>
          </div>

          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">사이즈</label>
            <input value={form.size} onChange={e => setForm(f => ({ ...f, size: e.target.value }))}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
          </div>
        </div>

        <div className="sticky bottom-0 bg-white px-6 py-4 border-t border-gray-100 flex gap-3">
          <button onClick={onClose} className="flex-1 border border-gray-200 rounded-xl py-3 text-sm font-medium text-gray-600 hover:bg-gray-50">
            취소
          </button>
          <button onClick={handleSave} disabled={saving}
            className="flex-1 rounded-xl py-3 text-sm font-semibold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
            style={{ backgroundColor: '#1B2A4A' }}>
            {saving ? '저장 중...' : '저장'}
          </button>
        </div>
      </div>
    </div>
  )
}
