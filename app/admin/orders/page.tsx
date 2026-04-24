'use client'
import { useState } from 'react'
import { useRouter } from 'next/navigation'
import { CheckCircle, Package, Download } from 'lucide-react'
import { supabase } from '@/lib/supabase'
import { Product, PaymentType, DeliveryDest } from '@/lib/types'
import { DELIVERY_DESTS, QUICK_FACTORIES, ALL_MATERIALS } from '@/lib/constants'
import { SAMPLE_ORDERS } from '@/lib/sampleOrders'
import ProductSearchInput from '@/components/ProductSearchInput'
import DatePickerWithDay from '@/components/DatePickerWithDay'
import { generateOrderExcel } from '@/lib/generateOrderExcel'

export default function AdminOrdersPage() {
  const router = useRouter()
  const [step, setStep] = useState(1)
  const [selectedProduct, setSelectedProduct] = useState<Product | null>(null)
  const [saving, setSaving] = useState(false)
  const [seedLoading, setSeedLoading] = useState(false)
  const [excelLoading, setExcelLoading] = useState(false)
  const [lastRegisteredOrders, setLastRegisteredOrders] = useState<any[]>([])

  const [form, setForm] = useState({
    orderDate: new Date().toISOString().split('T')[0],
    orderRound: '',
    factory: '',
    factoryPaymentType: '계약금선납' as PaymentType,
    deliveryDestination: '주희물류' as DeliveryDest,
    expectedDeliveryDate: '',
    memo: '',
    colorSelections: {} as Record<string, { selected: boolean; qty: number }>,
  })

  const [selectedMaterials, setSelectedMaterials] = useState<string[]>(
    ['원단', '행택', '지퍼백', '메인라벨', '케어라벨']
  )

  const toggleMaterial = (m: string) => {
    setSelectedMaterials(prev =>
      prev.includes(m) ? prev.filter(x => x !== m) : [...prev, m]
    )
  }

  const handleSelectProduct = (product: Product) => {
    setSelectedProduct(product)
    const colorSelections: Record<string, { selected: boolean; qty: number }> = {}
    product.colors.forEach(c => { colorSelections[c.colorCode] = { selected: false, qty: 0 } })
    setForm(f => ({ ...f, colorSelections }))
    setStep(2)
  }

  const handleSave = async () => {
    if (!selectedProduct) return
    const selectedColors = selectedProduct.colors.filter(c => form.colorSelections[c.colorCode]?.selected)
    if (selectedColors.length === 0) { alert('컬러를 최소 1개 선택해주세요.'); return }
    if (!form.factory) { alert('생산처를 입력해주세요.'); return }
    setSaving(true)
    const rows = selectedColors.map(c => ({
      order_date: form.orderDate,
      category: selectedProduct.category,
      product_id: selectedProduct.id,
      product_code: selectedProduct.productCode,
      product_name: selectedProduct.productName,
      image_url: selectedProduct.imageUrl,
      color_code: c.colorCode,
      color_name: c.colorName,
      order_qty: form.colorSelections[c.colorCode]?.qty || 0,
      factory: form.factory,
      factory_payment_type: form.factoryPaymentType,
      contract_deposit_paid: false,
      delivery_destination: form.deliveryDestination,
      expected_delivery_date: form.expectedDeliveryDate || null,
      status: form.factoryPaymentType === '계약금선납' ? '계약금송금대기' : '발주완료',
      materials: Object.fromEntries(selectedMaterials.map(m => [m, false])),
      warehouse_qty: 0,
      memo: form.memo,
    }))
    await supabase.from('orders').insert(rows)
    setLastRegisteredOrders(rows)
    setSaving(false)
    setStep(3)
  }

  const handleDownloadExcel = async () => {
    if (!selectedProduct || lastRegisteredOrders.length === 0) return
    setExcelLoading(true)
    try {
      await generateOrderExcel(lastRegisteredOrders.map(o => ({
        brand: selectedProduct.brand || '화이트샌즈',
        productName: selectedProduct.productName,
        productCode: selectedProduct.productCode,
        colorName: o.color_name,
        colorCode: o.color_code,
        orderRound: form.orderRound || `${new Date().getFullYear().toString().slice(2)}-1차`,
        factory: form.factory,
        orderDate: form.orderDate,
        expectedDeliveryDate: form.expectedDeliveryDate,
        orderQty: o.order_qty,
        materials: selectedMaterials,
        imageUrl: selectedProduct.imageUrl,
        category: selectedProduct.category,
        size: selectedProduct.size,
      })))
    } catch (e) {
      console.error(e)
      alert('엑셀 생성 중 오류가 발생했습니다.')
    }
    setExcelLoading(false)
  }

  const handleSeedSample = async () => {
    setSeedLoading(true)
    await supabase.from('orders').insert(SAMPLE_ORDERS)
    setSeedLoading(false)
    alert('샘플 발주 데이터 3건이 추가되었습니다.')
  }

  const handleReset = () => {
    setStep(1)
    setSelectedProduct(null)
    setLastRegisteredOrders([])
    setForm({
      orderDate: new Date().toISOString().split('T')[0],
      orderRound: '',
      factory: '',
      factoryPaymentType: '계약금선납',
      deliveryDestination: '주희물류',
      expectedDeliveryDate: '',
      memo: '',
      colorSelections: {},
    })
    setSelectedMaterials(['원단', '행택', '지퍼백', '메인라벨', '케어라벨'])
  }

  return (
    <div className="max-w-2xl mx-auto">
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-xl font-bold" style={{ color: '#1B2A4A' }}>발주 등록</h1>
        <button onClick={handleSeedSample} disabled={seedLoading}
          className="text-xs border border-gray-200 rounded-xl px-3 py-2 text-gray-500 hover:bg-gray-50 disabled:opacity-50">
          {seedLoading ? '추가 중...' : '샘플 데이터 추가'}
        </button>
      </div>

      {/* Step 진행 표시 */}
      <div className="flex items-center gap-3 mb-8">
        {[1, 2, 3].map(s => (
          <div key={s} className="flex items-center gap-2">
            <div
              className={`w-7 h-7 rounded-full flex items-center justify-center text-xs font-bold ${
                step >= s ? 'text-white' : 'bg-gray-100 text-gray-400'
              }`}
              style={step >= s ? { backgroundColor: '#1B2A4A' } : {}}
            >
              {step > s ? <CheckCircle size={14} /> : s}
            </div>
            <span className={`text-xs ${step >= s ? 'text-gray-700 font-medium' : 'text-gray-400'}`}>
              {s === 1 ? '상품선택' : s === 2 ? '발주정보' : '완료'}
            </span>
            {s < 3 && <div className="w-8 h-px bg-gray-200" />}
          </div>
        ))}
      </div>

      {/* Step 1 — 상품 선택 */}
      {step === 1 && (
        <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-6">
          <h2 className="text-sm font-semibold text-gray-700 mb-4">상품을 검색해서 선택하세요</h2>
          <ProductSearchInput onSelect={handleSelectProduct} />
        </div>
      )}

      {/* Step 2 — 발주 정보 */}
      {step === 2 && selectedProduct && (
        <div className="space-y-4">
          {/* 선택된 상품 */}
          <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-4 flex items-center gap-3">
            {selectedProduct.imageUrl
              ? <img src={selectedProduct.imageUrl} alt={selectedProduct.productName} className="w-14 h-14 rounded-xl object-cover" />
              : <div className="w-14 h-14 rounded-xl bg-gray-100 flex items-center justify-center"><Package size={18} className="text-gray-400" /></div>
            }
            <div className="flex-1 min-w-0">
              <p className="font-semibold text-gray-800 text-sm leading-snug">{selectedProduct.productName}</p>
              <p className="text-xs text-gray-400 mt-0.5">{selectedProduct.productCode} · {selectedProduct.category}</p>
            </div>
            <button onClick={() => setStep(1)} className="ml-auto text-xs text-blue-500 hover:underline flex-shrink-0">변경</button>
          </div>

          {/* 컬러 & 수량 */}
          <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-6">
            <h3 className="text-sm font-semibold text-gray-700 mb-4">컬러별 발주수량</h3>
            {selectedProduct.colors.length === 0 ? (
              <p className="text-sm text-gray-400">등록된 컬러가 없습니다. 상품 관리에서 컬러를 먼저 추가해주세요.</p>
            ) : (
              <div className="space-y-3">
                {selectedProduct.colors.map(c => {
                  const sel = form.colorSelections[c.colorCode]
                  return (
                    <div key={c.colorCode}
                      className={`flex items-center gap-3 p-3 rounded-xl border transition-all ${
                        sel?.selected ? 'border-blue-300 bg-blue-50' : 'border-gray-200'
                      }`}
                    >
                      <input type="checkbox" checked={sel?.selected || false}
                        onChange={e => setForm(f => ({
                          ...f,
                          colorSelections: {
                            ...f.colorSelections,
                            [c.colorCode]: { ...f.colorSelections[c.colorCode], selected: e.target.checked }
                          }
                        }))}
                        className="w-4 h-4 rounded" />
                      <span className="text-sm font-medium text-gray-700 w-32 flex-shrink-0">
                        {c.colorName} ({c.colorCode})
                      </span>
                      <input
                        type="number" min={0}
                        value={sel?.qty || ''}
                        onChange={e => setForm(f => ({
                          ...f,
                          colorSelections: {
                            ...f.colorSelections,
                            [c.colorCode]: { ...f.colorSelections[c.colorCode], qty: parseInt(e.target.value) || 0 }
                          }
                        }))}
                        disabled={!sel?.selected}
                        placeholder="수량 입력"
                        className="flex-1 border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 disabled:bg-gray-50 disabled:text-gray-400"
                      />
                    </div>
                  )
                })}
              </div>
            )}
          </div>

          {/* 생산 정보 */}
          <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-6 space-y-4">
            <h3 className="text-sm font-semibold text-gray-700">생산 정보</h3>

            <div className="grid grid-cols-2 gap-3">
              <div>
                <label className="text-xs font-semibold text-gray-500 block mb-1">발주일</label>
                <DatePickerWithDay
                  value={form.orderDate}
                  onChange={v => setForm(f => ({ ...f, orderDate: v }))}
                />
              </div>
              <div>
                <label className="text-xs font-semibold text-gray-500 block mb-1">차수 (예: 26-1차)</label>
                <input
                  value={form.orderRound}
                  onChange={e => setForm(f => ({ ...f, orderRound: e.target.value }))}
                  placeholder="26-1차"
                  className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200"
                />
              </div>
            </div>

            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-2">생산처</label>
              <div className="flex flex-wrap gap-1.5 mb-2">
                {QUICK_FACTORIES.map(f => (
                  <button key={f} type="button"
                    onClick={() => setForm(prev => ({ ...prev, factory: f }))}
                    className={`px-2.5 py-1.5 rounded-xl text-xs border transition-all ${
                      form.factory === f
                        ? 'border-blue-400 bg-blue-50 text-blue-700'
                        : 'border-gray-200 text-gray-600 hover:border-gray-300'
                    }`}>
                    {f}
                  </button>
                ))}
              </div>
              <input value={form.factory}
                onChange={e => setForm(f => ({ ...f, factory: e.target.value }))}
                placeholder="직접 입력"
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200" />
            </div>

            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-2">생산 방식</label>
              <div className="flex gap-3">
                {(['계약금선납', '바로생산'] as PaymentType[]).map(t => (
                  <label key={t}
                    className={`flex items-center gap-2 flex-1 p-3 rounded-xl border cursor-pointer transition-all ${
                      form.factoryPaymentType === t ? 'border-blue-400 bg-blue-50' : 'border-gray-200 hover:border-gray-300'
                    }`}>
                    <input type="radio" name="paymentType" value={t}
                      checked={form.factoryPaymentType === t}
                      onChange={() => setForm(f => ({ ...f, factoryPaymentType: t }))}
                      className="accent-blue-600" />
                    <span className="text-sm font-medium text-gray-700">{t}</span>
                  </label>
                ))}
              </div>
            </div>

            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">입고처</label>
              <select value={form.deliveryDestination}
                onChange={e => setForm(f => ({ ...f, deliveryDestination: e.target.value as DeliveryDest }))}
                className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200">
                {DELIVERY_DESTS.map(d => <option key={d} value={d}>{d}</option>)}
              </select>
            </div>

            <div>
              <label className="text-xs font-semibold text-gray-500 block mb-1">예상 납기일</label>
              <DatePickerWithDay
                value={form.expectedDeliveryDate}
                onChange={v => setForm(f => ({ ...f, expectedDeliveryDate: v }))}
              />
            </div>
          </div>

          {/* 부자재 선택 */}
          <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-6">
            <h3 className="text-sm font-semibold text-gray-700 mb-1">부자재 선택</h3>
            <p className="text-xs text-gray-400 mb-3">이 발주에 필요한 부자재를 선택하세요 (미입고 상태로 시작)</p>
            <div className="flex flex-wrap gap-2">
              {ALL_MATERIALS.map(m => (
                <button
                  key={m}
                  type="button"
                  onClick={() => toggleMaterial(m)}
                  className={`px-3 py-2 rounded-xl text-sm font-medium border transition-all ${
                    selectedMaterials.includes(m)
                      ? 'border-blue-400 bg-blue-50 text-blue-700'
                      : 'border-gray-200 text-gray-500 hover:border-gray-300'
                  }`}
                >
                  {m}
                </button>
              ))}
            </div>
          </div>

          {/* 메모 */}
          <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-6">
            <label className="text-xs font-semibold text-gray-500 block mb-1">메모</label>
            <textarea value={form.memo}
              onChange={e => setForm(f => ({ ...f, memo: e.target.value }))}
              rows={3}
              placeholder="특이사항 입력..."
              className="w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 resize-none" />
          </div>

          <div className="flex gap-3">
            <button onClick={() => setStep(1)}
              className="flex-1 border border-gray-200 rounded-xl py-3 text-sm font-medium text-gray-600 hover:bg-gray-50">
              이전
            </button>
            <button onClick={handleSave} disabled={saving || !form.factory}
              className="flex-1 rounded-xl py-3 text-sm font-semibold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
              style={{ backgroundColor: '#1B2A4A' }}>
              {saving ? '등록 중...' : '발주 등록 완료'}
            </button>
          </div>
        </div>
      )}

      {/* Step 3 — 완료 */}
      {step === 3 && (
        <div className="bg-white rounded-2xl border border-gray-100 shadow-sm p-12 text-center">
          <CheckCircle size={48} className="mx-auto mb-4 text-green-500" />
          <h2 className="text-lg font-bold text-gray-800 mb-2">발주가 등록되었습니다!</h2>
          <p className="text-sm text-gray-400 mb-2">발주현황 페이지에서 확인할 수 있습니다.</p>
          {selectedProduct && (
            <div className="mb-6 p-3 bg-gray-50 rounded-xl text-xs text-gray-500 text-left">
              <p><span className="font-semibold">상품:</span> {selectedProduct.productName}</p>
              <p><span className="font-semibold">컬러:</span> {lastRegisteredOrders.map(o => o.color_name).join(', ')}</p>
              <p><span className="font-semibold">총 수량:</span> {lastRegisteredOrders.reduce((s, o) => s + o.order_qty, 0).toLocaleString()}개</p>
              <p><span className="font-semibold">생산처:</span> {form.factory}</p>
            </div>
          )}
          <div className="flex flex-col gap-3">
            {/* 엑셀 다운로드 버튼 */}
            <button
              onClick={handleDownloadExcel}
              disabled={excelLoading}
              className="w-full flex items-center justify-center gap-2 py-3 rounded-xl text-sm font-semibold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
              style={{ backgroundColor: '#217346' }}
            >
              <Download size={16} />
              {excelLoading ? '생성 중...' : '📥 발주서 엑셀 다운로드'}
            </button>

            <div className="flex gap-3">
              <button
                onClick={handleReset}
                className="flex-1 px-6 py-2.5 border border-gray-200 rounded-xl text-sm font-medium text-gray-600 hover:bg-gray-50">
                추가 발주 등록
              </button>
              <button onClick={() => router.push('/')}
                className="flex-1 px-6 py-2.5 rounded-xl text-sm font-semibold text-white"
                style={{ backgroundColor: '#1B2A4A' }}>
                발주현황 보기
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
