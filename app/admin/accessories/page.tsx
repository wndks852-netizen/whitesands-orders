'use client'
import { useEffect, useState, useCallback, useRef } from 'react'
import { supabase, rowToAccessory, uploadImageToStorage } from '@/lib/supabase'
import { Accessory, AccessoryCategory } from '@/lib/types'
import { Plus, Pencil, Trash2, Upload, Package, Search, X } from 'lucide-react'
import * as XLSX from 'xlsx'

const ACCESSORY_CATEGORIES: AccessoryCategory[] = ['라벨류', '포장재', '원단', '장식', '기타']

const emptyForm = () => ({
  name: '',
  category: '기타' as AccessoryCategory,
  spec: '',
  unit: 'EA',
  stockQty: 0,
  safetyQty: 0,
  supplier: '',
  imageUrl: '',
  note: '',
})

export default function AdminAccessoriesPage() {
  const [accessories, setAccessories] = useState<Accessory[]>([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')
  const [modalOpen, setModalOpen] = useState(false)
  const [editing, setEditing] = useState<Accessory | null>(null)
  const [form, setForm] = useState(emptyForm())
  const [saving, setSaving] = useState(false)
  const [uploading, setUploading] = useState(false)
  const [xlsxUploading, setXlsxUploading] = useState(false)
  const fileRef = useRef<HTMLInputElement>(null)
  const xlsxRef = useRef<HTMLInputElement>(null)

  const fetchAccessories = useCallback(async () => {
    const { data } = await supabase.from('accessories').select('*').order('category').order('name')
    if (data) setAccessories(data.map(rowToAccessory))
    setLoading(false)
  }, [])

  useEffect(() => { fetchAccessories() }, [fetchAccessories])

  const openNew = () => { setEditing(null); setForm(emptyForm()); setModalOpen(true) }
  const openEdit = (a: Accessory) => {
    setEditing(a)
    setForm({
      name: a.name,
      category: a.category,
      spec: a.spec,
      unit: a.unit,
      stockQty: a.stockQty,
      safetyQty: a.safetyQty,
      supplier: a.supplier,
      imageUrl: a.imageUrl || '',
      note: a.note,
    })
    setModalOpen(true)
  }

  const handleSave = async () => {
    if (!form.name.trim()) return
    setSaving(true)
    const row = {
      name: form.name,
      category: form.category,
      spec: form.spec,
      unit: form.unit,
      stock_qty: form.stockQty,
      safety_qty: form.safetyQty,
      supplier: form.supplier,
      image_url: form.imageUrl || null,
      note: form.note,
    }
    if (editing) {
      await supabase.from('accessories').update(row).eq('id', editing.id)
    } else {
      await supabase.from('accessories').insert(row)
    }
    setSaving(false)
    setModalOpen(false)
    fetchAccessories()
  }

  const handleDelete = async (id: string) => {
    if (!confirm('부자재를 삭제하시겠습니까?')) return
    await supabase.from('accessories').delete().eq('id', id)
    fetchAccessories()
  }

  const handleImageUpload = async (file: File) => {
    setUploading(true)
    const url = await uploadImageToStorage(file, `accessory_${Date.now()}`)
    if (url) setForm(f => ({ ...f, imageUrl: url }))
    setUploading(false)
  }

  // 엑셀 업로드로 부자재 일괄 등록
  // 컬럼: A:부자재명 | B:카테고리 | C:규격 | D:단위 | E:재고수량 | F:안전재고 | G:공급업체 | H:비고
  const handleXlsxUpload = async (file: File) => {
    setXlsxUploading(true)
    try {
      const arrayBuffer = await file.arrayBuffer()
      const wb = XLSX.read(arrayBuffer, { type: 'array' })
      const ws = wb.Sheets[wb.SheetNames[0]]
      const rows = XLSX.utils.sheet_to_json<any[]>(ws, { header: 1, defval: '' })
      const dataRows = (rows as any[][]).slice(1).filter((r: any[]) => r[0])

      const insertData = dataRows.map((r: any[]) => ({
        name: String(r[0] || '').trim(),
        category: ACCESSORY_CATEGORIES.includes(r[1] as AccessoryCategory) ? r[1] : '기타',
        spec: String(r[2] || '').trim(),
        unit: String(r[3] || 'EA').trim(),
        stock_qty: parseInt(r[4]) || 0,
        safety_qty: parseInt(r[5]) || 0,
        supplier: String(r[6] || '').trim(),
        note: String(r[7] || '').trim(),
      }))

      if (insertData.length > 0) {
        const { error } = await supabase
          .from('accessories')
          .upsert(insertData, { onConflict: 'name' })
        if (!error) {
          alert(`${insertData.length}개 부자재가 등록되었습니다.`)
          fetchAccessories()
        } else {
          alert('업로드 중 오류: ' + error.message)
        }
      }
    } catch {
      alert('엑셀 파일을 읽을 수 없습니다.')
    }
    setXlsxUploading(false)
  }

  const downloadTemplate = () => {
    const wb = XLSX.utils.book_new()
    const ws = XLSX.utils.aoa_to_sheet([
      ['부자재명', '카테고리', '규격', '단위', '재고수량', '안전재고', '공급업체', '비고'],
      ['메인라벨', '라벨류', '45x20mm', 'EA', 1000, 200, '(주)라벨컴퍼니', ''],
      ['케어라벨', '라벨류', '30x50mm', 'EA', 500, 100, '', ''],
    ])
    XLSX.utils.book_append_sheet(wb, ws, '부자재목록')
    const buf = XLSX.write(wb, { bookType: 'xlsx', type: 'array' })
    const blob = new Blob([buf], { type: 'application/octet-stream' })
    const a = document.createElement('a')
    a.href = URL.createObjectURL(blob)
    a.download = '부자재_업로드_양식.xlsx'
    a.click()
  }

  const filtered = accessories.filter(a =>
    !search || a.name.toLowerCase().includes(search.toLowerCase())
  )

  return (
    <div>
      <div className="flex justify-between items-center mb-6 flex-wrap gap-3">
        <h1 className="text-xl font-bold" style={{ color: '#1B2A4A' }}>부자재 관리</h1>
        <div className="flex gap-2 flex-wrap">
          <button onClick={() => xlsxRef.current?.click()}
            disabled={xlsxUploading}
            className="flex items-center gap-2 px-4 py-2.5 rounded-xl text-sm font-medium border border-gray-200 text-gray-600 hover:bg-gray-50 disabled:opacity-50">
            <Upload size={15} />
            {xlsxUploading ? '업로드 중...' : '엑셀 일괄등록'}
          </button>
          <input ref={xlsxRef} type="file" accept=".xlsx,.xls" className="hidden"
            onChange={e => e.target.files?.[0] && handleXlsxUpload(e.target.files[0])} />

          <button onClick={downloadTemplate}
            className="flex items-center gap-2 px-4 py-2.5 rounded-xl text-sm font-medium border border-gray-200 text-gray-600 hover:bg-gray-50">
            📥 양식 다운로드
          </button>

          <button onClick={openNew}
            className="flex items-center gap-2 px-4 py-2.5 rounded-xl text-sm font-semibold text-white"
            style={{ backgroundColor: '#1B2A4A' }}>
            <Plus size={16} /> 부자재 등록
          </button>
        </div>
      </div>

      {/* 엑셀 양식 안내 */}
      <div className="mb-4 bg-blue-50 border border-blue-200 rounded-xl px-4 py-3 text-xs text-blue-700">
        📋 엑셀 업로드 양식: <strong>부자재명 | 카테고리(라벨류/포장재/원단/장식/기타) | 규격 | 단위 | 재고수량 | 안전재고 | 공급업체 | 비고</strong>
        <br />이미지는 등록 후 개별 수정에서 업로드하세요.
      </div>

      {/* 검색 */}
      <div className="relative mb-4">
        <Search size={14} className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
        <input value={search} onChange={e => setSearch(e.target.value)}
          placeholder="부자재명 검색..."
          className="w-full pl-9 pr-4 py-2.5 border border-gray-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 bg-white" />
      </div>

      {/* 테이블 */}
      {loading ? (
        <div className="text-center py-12 text-gray-400">로딩 중...</div>
      ) : (
        <div className="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden">
          <table className="w-full text-sm">
            <thead className="bg-gray-50 text-gray-500 text-xs">
              <tr>
                {['이미지', '카테고리', '부자재명', '규격', '단위', '재고', '안전재고', '공급업체', ''].map(h => (
                  <th key={h} className="px-3 py-3 text-left font-medium whitespace-nowrap">{h}</th>
                ))}
              </tr>
            </thead>
            <tbody className="divide-y divide-gray-50">
              {filtered.map(acc => (
                <tr key={acc.id} className="hover:bg-gray-50 cursor-pointer" onClick={() => openEdit(acc)}>
                  <td className="px-3 py-2.5" onClick={e => e.stopPropagation()}>
                    {acc.imageUrl
                      ? <img src={acc.imageUrl} alt={acc.name} className="w-10 h-10 rounded-lg object-cover" />
                      : <div className="w-10 h-10 rounded-lg bg-gray-100 flex items-center justify-center"><Package size={14} className="text-gray-400" /></div>
                    }
                  </td>
                  <td className="px-3 py-2.5">
                    <span className="bg-gray-100 text-gray-600 text-xs px-2 py-0.5 rounded-full">{acc.category}</span>
                  </td>
                  <td className="px-3 py-2.5 font-medium text-gray-800">{acc.name}</td>
                  <td className="px-3 py-2.5 text-gray-500 text-xs">{acc.spec || '-'}</td>
                  <td className="px-3 py-2.5 text-gray-500 text-xs">{acc.unit}</td>
                  <td className="px-3 py-2.5">
                    <span className={`font-bold text-sm ${
                      acc.safetyQty > 0 && acc.stockQty <= acc.safetyQty
                        ? 'text-orange-500'
                        : 'text-gray-800'
                    }`}>
                      {acc.stockQty.toLocaleString()}
                    </span>
                  </td>
                  <td className="px-3 py-2.5 text-gray-500 text-xs">{acc.safetyQty.toLocaleString()}</td>
                  <td className="px-3 py-2.5 text-gray-500 text-xs truncate max-w-24">{acc.supplier || '-'}</td>
                  <td className="px-3 py-2.5" onClick={e => e.stopPropagation()}>
                    <div className="flex gap-1.5">
                      <button onClick={() => openEdit(acc)} className="p-1.5 text-blue-400 hover:text-blue-600 hover:bg-blue-50 rounded-lg"><Pencil size={13} /></button>
                      <button onClick={() => handleDelete(acc.id)} className="p-1.5 text-red-400 hover:text-red-600 hover:bg-red-50 rounded-lg"><Trash2 size={13} /></button>
                    </div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
          {filtered.length === 0 && (
            <div className="text-center py-12 text-gray-400">
              <Package size={32} className="mx-auto mb-2 opacity-30" />
              <p className="text-sm">등록된 부자재가 없습니다.</p>
            </div>
          )}
        </div>
      )}

      {/* 등록/수정 모달 */}
      {modalOpen && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 p-4">
          <div className="bg-white rounded-2xl shadow-2xl w-full max-w-lg max-h-[90vh] overflow-y-auto">
            <div className="sticky top-0 bg-white px-6 py-4 border-b border-gray-100 flex justify-between items-center">
              <h2 className="text-base font-bold" style={{ color: '#1B2A4A' }}>
                {editing ? '부자재 수정' : '부자재 등록'}
              </h2>
              <button onClick={() => setModalOpen(false)}><X size={18} className="text-gray-400" /></button>
            </div>

            <div className="p-6 space-y-4">
              {/* 이미지 */}
              <div>
                <label className="text-xs font-semibold text-gray-500 block mb-2">이미지</label>
                <div className="flex items-center gap-3">
                  {form.imageUrl ? (
                    <img src={form.imageUrl} alt="부자재" className="w-20 h-20 rounded-xl object-cover border border-gray-200" />
                  ) : (
                    <div className="w-20 h-20 rounded-xl bg-gray-100 flex items-center justify-center border border-dashed border-gray-300">
                      <Package size={20} className="text-gray-400" />
                    </div>
                  )}
                  <div className="space-y-1.5">
                    <button onClick={() => fileRef.current?.click()}
                      disabled={uploading}
                      className="flex items-center gap-1.5 text-xs px-3 py-1.5 border border-gray-200 rounded-lg hover:bg-gray-50 disabled:opacity-50">
                      <Upload size={12} />{uploading ? '업로드 중...' : '이미지 업로드'}
                    </button>
                    {form.imageUrl && (
                      <button onClick={() => setForm(f => ({ ...f, imageUrl: '' }))}
                        className="text-xs text-red-400 hover:text-red-600">삭제</button>
                    )}
                  </div>
                  <input ref={fileRef} type="file" accept="image/*" className="hidden"
                    onChange={e => e.target.files?.[0] && handleImageUpload(e.target.files[0])} />
                </div>
              </div>

              <div className="grid grid-cols-2 gap-3">
                <div className="col-span-2">
                  <label className="text-xs font-semibold text-gray-500 block mb-1">부자재명 *</label>
                  <input value={form.name} onChange={e => setForm(f => ({ ...f, name: e.target.value }))}
                    className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                </div>
                <div>
                  <label className="text-xs font-semibold text-gray-500 block mb-1">카테고리</label>
                  <select value={form.category} onChange={e => setForm(f => ({ ...f, category: e.target.value as AccessoryCategory }))}
                    className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                    {ACCESSORY_CATEGORIES.map(c => <option key={c} value={c}>{c}</option>)}
                  </select>
                </div>
                <div>
                  <label className="text-xs font-semibold text-gray-500 block mb-1">단위</label>
                  <input value={form.unit} onChange={e => setForm(f => ({ ...f, unit: e.target.value }))}
                    className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                </div>
                <div>
                  <label className="text-xs font-semibold text-gray-500 block mb-1">규격/사이즈</label>
                  <input value={form.spec} onChange={e => setForm(f => ({ ...f, spec: e.target.value }))}
                    placeholder="예: 45x20mm"
                    className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                </div>
                <div>
                  <label className="text-xs font-semibold text-gray-500 block mb-1">공급업체</label>
                  <input value={form.supplier} onChange={e => setForm(f => ({ ...f, supplier: e.target.value }))}
                    className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                </div>
                <div>
                  <label className="text-xs font-semibold text-gray-500 block mb-1">현재 재고</label>
                  <input type="number" value={form.stockQty}
                    onChange={e => setForm(f => ({ ...f, stockQty: parseInt(e.target.value) || 0 }))}
                    className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                </div>
                <div>
                  <label className="text-xs font-semibold text-gray-500 block mb-1">안전재고</label>
                  <input type="number" value={form.safetyQty}
                    onChange={e => setForm(f => ({ ...f, safetyQty: parseInt(e.target.value) || 0 }))}
                    className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
                </div>
                <div className="col-span-2">
                  <label className="text-xs font-semibold text-gray-500 block mb-1">비고</label>
                  <textarea value={form.note} onChange={e => setForm(f => ({ ...f, note: e.target.value }))}
                    rows={2} className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 resize-none" />
                </div>
              </div>
            </div>

            <div className="sticky bottom-0 bg-white px-6 py-4 border-t border-gray-100 flex gap-3">
              <button onClick={() => setModalOpen(false)}
                className="flex-1 border border-gray-200 rounded-xl py-2.5 text-sm font-medium text-gray-600 hover:bg-gray-50">취소</button>
              <button onClick={handleSave} disabled={saving || !form.name.trim()}
                className="flex-1 rounded-xl py-2.5 text-sm font-semibold text-white disabled:opacity-50"
                style={{ backgroundColor: '#1B2A4A' }}>
                {saving ? '저장 중...' : '저장'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
