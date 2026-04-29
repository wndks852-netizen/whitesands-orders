'use client'
import { useState, useEffect } from 'react'
import { supabase, rowToAccessory } from '@/lib/supabase'
import { Accessory } from '@/lib/types'
import { Upload, Plus, Trash2, FileText, Loader } from 'lucide-react'

export default function ProductAccessoryLinkPage() {
  const [accessories, setAccessories] = useState<Accessory[]>([])
  const [productCode, setProductCode] = useState('')
  const [productName, setProductName] = useState('')
  const [links, setLinks] = useState<Array<{ accessoryId: string; qty: number; note: string }>>([])
  const [savedLinks, setSavedLinks] = useState<any[]>([])
  const [saving, setSaving] = useState(false)
  const [pdfAnalyzing, setPdfAnalyzing] = useState(false)
  const [pdfResult, setPdfResult] = useState('')

  useEffect(() => {
    supabase.from('accessories').select('*').order('name')
      .then(({ data }) => { if (data) setAccessories(data.map(rowToAccessory)) })
  }, [])

  const loadLinks = async () => {
    if (!productCode.trim()) return
    const { data } = await supabase
      .from('product_accessories')
      .select('*, accessories(*)')
      .eq('product_code', productCode)
    if (data) setSavedLinks(data)
  }

  // PDF 업로드 → Anthropic API로 분석
  const handlePdfUpload = async (file: File) => {
    setPdfAnalyzing(true)
    setPdfResult('')
    try {
      const arrayBuffer = await file.arrayBuffer()
      const base64 = btoa(
        new Uint8Array(arrayBuffer).reduce((data, byte) => data + String.fromCharCode(byte), '')
      )

      const response = await fetch('https://api.anthropic.com/v1/messages', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': process.env.NEXT_PUBLIC_ANTHROPIC_API_KEY || '',
          'anthropic-version': '2023-06-01',
        },
        body: JSON.stringify({
          model: 'claude-haiku-4-5-20251001',
          max_tokens: 1000,
          messages: [{
            role: 'user',
            content: [
              {
                type: 'document',
                source: { type: 'base64', media_type: 'application/pdf', data: base64 },
              },
              {
                type: 'text',
                text: `이 작업지시서 PDF에서 필요한 부자재 목록을 추출해주세요.
다음 JSON 형식으로만 응답하세요 (다른 텍스트 없이):
{
  "productName": "상품명",
  "productCode": "상품코드",
  "accessories": [
    { "name": "부자재명", "qty": 1, "note": "비고" }
  ]
}
부자재는 라벨, 행택, 지퍼백, 원단, 메인라벨, 케어라벨, 장식 등을 포함합니다.`,
              },
            ],
          }],
        }),
      })

      const result = await response.json()
      const text = result.content?.[0]?.text || ''

      try {
        const parsed = JSON.parse(text.replace(/```json|```/g, '').trim())
        setPdfResult(JSON.stringify(parsed, null, 2))
        if (parsed.productName) setProductName(parsed.productName)
        if (parsed.productCode) setProductCode(parsed.productCode)
        if (parsed.accessories) {
          const matched = parsed.accessories
            .map((a: any) => {
              const found = accessories.find(acc =>
                acc.name.includes(a.name) || a.name.includes(acc.name)
              )
              return { accessoryId: found?.id || '', qty: a.qty || 1, note: a.note || '' }
            })
            .filter((a: any) => a.accessoryId)
          if (matched.length > 0) setLinks(matched)
        }
      } catch {
        setPdfResult(text)
      }
    } catch {
      setPdfResult('PDF 분석 중 오류가 발생했습니다.')
    }
    setPdfAnalyzing(false)
  }

  const addLink = () => {
    setLinks(prev => [...prev, { accessoryId: '', qty: 1, note: '' }])
  }

  const removeLink = (idx: number) => {
    setLinks(prev => prev.filter((_, i) => i !== idx))
  }

  const handleSave = async () => {
    if (!productCode.trim() || links.filter(l => l.accessoryId).length === 0) return
    setSaving(true)

    await supabase.from('product_accessories').delete().eq('product_code', productCode)

    const insertData = links
      .filter(l => l.accessoryId)
      .map(l => ({
        product_code: productCode,
        product_name: productName,
        accessory_id: l.accessoryId,
        required_qty: l.qty,
        note: l.note,
      }))

    await supabase.from('product_accessories').insert(insertData)
    setSaving(false)
    alert(`${insertData.length}개 부자재 연결이 저장되었습니다.`)
    loadLinks()
  }

  return (
    <div className="max-w-3xl mx-auto">
      <h1 className="text-xl font-bold mb-6" style={{ color: '#1B2A4A' }}>
        아이템별 필요 부자재 등록
      </h1>

      {/* PDF 업로드 섹션 */}
      <div className="bg-blue-50 border border-blue-200 rounded-2xl p-5 mb-6">
        <div className="flex items-center gap-2 mb-3">
          <FileText size={16} className="text-blue-600" />
          <h2 className="text-sm font-bold text-blue-800">작업지시서 PDF 자동 분석</h2>
        </div>
        <p className="text-xs text-blue-600 mb-3">
          PDF 작업지시서를 업로드하면 AI가 필요 부자재를 자동으로 추출합니다.
        </p>
        <label className={`flex items-center gap-2 px-4 py-2.5 rounded-xl text-sm font-medium border cursor-pointer w-fit transition-all ${
          pdfAnalyzing
            ? 'opacity-50 cursor-not-allowed'
            : 'bg-white border-blue-300 text-blue-700 hover:bg-blue-50'
        }`}>
          {pdfAnalyzing ? <Loader size={15} className="animate-spin" /> : <Upload size={15} />}
          {pdfAnalyzing ? 'AI 분석 중...' : 'PDF 작업지시서 업로드'}
          <input type="file" accept=".pdf" className="hidden"
            disabled={pdfAnalyzing}
            onChange={e => e.target.files?.[0] && handlePdfUpload(e.target.files[0])} />
        </label>
        {pdfResult && (
          <div className="mt-3 bg-white rounded-xl p-3 text-xs font-mono text-gray-600 max-h-40 overflow-y-auto border border-blue-200">
            {pdfResult}
          </div>
        )}
      </div>

      {/* 상품 정보 */}
      <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-5 mb-4">
        <h2 className="text-sm font-bold text-gray-700 mb-3">상품 정보</h2>
        <div className="grid grid-cols-2 gap-3">
          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">상품코드</label>
            <input value={productCode} onChange={e => setProductCode(e.target.value)}
              onBlur={loadLinks}
              placeholder="예: GKS35C8H"
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
          </div>
          <div>
            <label className="text-xs font-semibold text-gray-500 block mb-1">상품명</label>
            <input value={productName} onChange={e => setProductName(e.target.value)}
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
          </div>
        </div>
      </div>

      {/* 필요 부자재 목록 */}
      <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-5 mb-4">
        <div className="flex justify-between items-center mb-3">
          <h2 className="text-sm font-bold text-gray-700">필요 부자재</h2>
          <button onClick={addLink}
            className="flex items-center gap-1 text-xs text-blue-600 hover:underline">
            <Plus size={13} /> 추가
          </button>
        </div>
        <div className="space-y-2">
          {links.map((link, idx) => (
            <div key={idx} className="flex gap-2 items-center">
              <select value={link.accessoryId}
                onChange={e => setLinks(prev => prev.map((l, i) => i === idx ? { ...l, accessoryId: e.target.value } : l))}
                className="flex-1 border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                <option value="">부자재 선택</option>
                {accessories.map(a => (
                  <option key={a.id} value={a.id}>{a.name} ({a.category})</option>
                ))}
              </select>
              <input type="number" min={1} value={link.qty}
                onChange={e => setLinks(prev => prev.map((l, i) => i === idx ? { ...l, qty: parseInt(e.target.value) || 1 } : l))}
                className="w-20 border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200"
                placeholder="수량" />
              <input value={link.note}
                onChange={e => setLinks(prev => prev.map((l, i) => i === idx ? { ...l, note: e.target.value } : l))}
                className="flex-1 border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200"
                placeholder="비고" />
              <button onClick={() => removeLink(idx)} className="text-red-400 hover:text-red-600 flex-shrink-0">
                <Trash2 size={14} />
              </button>
            </div>
          ))}
          {links.length === 0 && (
            <p className="text-xs text-gray-400 text-center py-4">
              PDF를 업로드하거나 직접 추가하세요.
            </p>
          )}
        </div>
      </div>

      <button onClick={handleSave} disabled={saving || !productCode.trim()}
        className="w-full rounded-xl py-3 text-sm font-semibold text-white disabled:opacity-50"
        style={{ backgroundColor: '#1B2A4A' }}>
        {saving ? '저장 중...' : '저장'}
      </button>

      {/* 기존 등록 현황 */}
      {savedLinks.length > 0 && (
        <div className="mt-6 bg-gray-50 rounded-2xl p-4">
          <h3 className="text-xs font-bold text-gray-600 mb-3">현재 등록된 부자재</h3>
          <div className="space-y-1.5">
            {savedLinks.map(link => (
              <div key={link.id} className="flex items-center gap-2 text-sm">
                <span className="text-gray-700 font-medium">{link.accessories?.name}</span>
                <span className="text-gray-400 text-xs">× {link.required_qty}</span>
                {link.note && <span className="text-gray-400 text-xs">· {link.note}</span>}
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  )
}
