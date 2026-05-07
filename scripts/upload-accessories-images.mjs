// scripts/upload-accessories-images.mjs
// 엑셀에서 이미지 추출 → Storage 업로드 → DB image_url 업데이트
import ExcelJS from 'exceljs'

const SUPABASE_URL = 'https://sleltqxmusppbrxzetkr.supabase.co'
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNsZWx0cXhtdXNwcGJyeHpldGtyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY4Mjg0NzIsImV4cCI6MjA5MjQwNDQ3Mn0.UrFsuWY_nQI1BUQ-uDM1kwLfLiXgnPdGFrnRvvGuWo8'
const EXCEL_PATH = 'C:/Users/user/Downloads/★생산팀 _부자재 현황.xlsx'

const H = { 'apikey': SUPABASE_KEY, 'Authorization': 'Bearer ' + SUPABASE_KEY }

function safeStr(v) {
  if (v === null || v === undefined) return ''
  if (typeof v === 'object') return ''
  return String(v).trim()
}

async function uploadImage(buffer, filename, ext) {
  const contentType = ext === 'png' ? 'image/png' : 'image/jpeg'
  const res = await fetch(`${SUPABASE_URL}/storage/v1/object/product-images/accessories/${filename}`, {
    method: 'POST',
    headers: { ...H, 'Content-Type': contentType, 'x-upsert': 'true' },
    body: buffer,
  })
  if (res.status === 200 || res.status === 201) {
    return `${SUPABASE_URL}/storage/v1/object/public/product-images/accessories/${filename}`
  }
  const err = await res.text()
  console.error(`  ❌ Storage 실패 (${res.status}):`, err.substring(0, 120))
  return null
}

async function patchImageUrl(productCode, imageUrl) {
  const res = await fetch(
    `${SUPABASE_URL}/rest/v1/accessories?product_code=eq.${encodeURIComponent(productCode)}`,
    {
      method: 'PATCH',
      headers: { ...H, 'Content-Type': 'application/json', 'Prefer': 'return=minimal' },
      body: JSON.stringify({ image_url: imageUrl }),
    }
  )
  return res.ok || res.status === 204
}

async function extractImages(ws, sheetIndex) {
  const rowToImgId = {}
  ws.getImages().forEach(img => {
    const r = img.range.tl.row // 0-indexed → Excel row = r+1
    if (!(r in rowToImgId)) rowToImgId[r] = img.imageId
  })

  const items = []
  for (let r = 2; r <= ws.rowCount; r++) {
    const row = ws.getRow(r)
    const code = safeStr(row.getCell(2).value)
    const name = safeStr(row.getCell(3).value)
    if (!name) continue

    const imgId = rowToImgId[r - 1] // tl.row = r-1
    items.push({ code, name, imgId })
  }
  return items
}

async function main() {
  console.log('엑셀 로딩...')
  const wb = new ExcelJS.Workbook()
  await wb.xlsx.readFile(EXCEL_PATH)
  console.log(`미디어 수: ${wb.model.media.length}개`)

  const ws1 = wb.worksheets[0]
  const ws2 = wb.worksheets[1]

  const items1 = await extractImages(ws1, 0)
  const items2 = await extractImages(ws2, 1)
  const allItems = [...items1, ...items2]

  const withImg = allItems.filter(a => a.imgId !== undefined)
  console.log(`\n총 ${allItems.length}개 | 이미지 있는 항목: ${withImg.length}개`)
  console.log('이미지 업로드 + DB 업데이트 시작...\n')

  let imgOk = 0, imgFail = 0, dbOk = 0, dbFail = 0

  for (let i = 0; i < allItems.length; i++) {
    const { code, name, imgId } = allItems[i]
    if (imgId === undefined) continue
    if (!code) continue // 코드 없으면 DB 매칭 불가

    const media = wb.getImage(imgId)
    if (!media || !media.buffer || media.buffer.length < 100) continue

    const ext = media.extension === 'jpeg' ? 'jpg' : (media.extension || 'jpg')
    // 파일명: 품번 + 인덱스 (ASCII만 사용)
    const safeCode = code.replace(/[^a-zA-Z0-9_-]/g, '')
    const filename = `${safeCode}_${i}.${ext}`

    // 1. Storage 업로드
    const imageUrl = await uploadImage(media.buffer, filename, ext)
    if (imageUrl) {
      imgOk++
      // 2. DB 업데이트
      const ok = await patchImageUrl(code, imageUrl)
      if (ok) dbOk++
      else { dbFail++; console.error(`  DB 실패: ${code}`) }
    } else {
      imgFail++
    }

    if ((imgOk + imgFail) % 30 === 0 && (imgOk + imgFail) > 0) {
      console.log(`  진행: ${imgOk + imgFail}/${withImg.length} (이미지 성공 ${imgOk}, 실패 ${imgFail})`)
    }

    await new Promise(r => setTimeout(r, 80))
  }

  console.log('\n=== 완료 ===')
  console.log(`이미지 업로드: ${imgOk}개 성공 / ${imgFail}개 실패`)
  console.log(`DB 업데이트: ${dbOk}개 성공 / ${dbFail}개 실패`)
}

main().catch(console.error)
