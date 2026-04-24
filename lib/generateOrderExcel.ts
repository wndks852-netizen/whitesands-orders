import ExcelJS from 'exceljs'
import { saveAs } from 'file-saver'
import dayjs from 'dayjs'

export interface OrderExcelItem {
  brand: string
  productName: string
  productCode: string
  colorName: string
  colorCode: string
  orderRound: string
  factory: string
  orderDate: string
  expectedDeliveryDate: string
  orderQty: number
  materials: string[]
  imageUrl?: string | null
  category: string
  size?: string
}

// 화이트샌즈 로고 base64 (PNG)
const WS_LOGO_B64 = 'iVBORw0KGgoAAAANSUhEUgAAAVcAAABpCAMAAAC56JBDAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAABmUExURf///wAAAP//tmYAZrb////bkDoAZtuQOjqQ27ZmAGa2//+2ZgA6kNv//2YAOpDb/2YAAABmtgAAZgAAOv//25A6OpA6ADo6Orb/27aQOjo6kDo6ADoAADoAOpCQOtvbkLb/tgAAAGr9jcAAAAAidFJOU////////////////////////////////////////////wAN0MNxAAAACXBIWXMAAA7EAAAOxAGVKw4bAAADlklEQVR4Xu2XbVejMBBGa7VWStWq3e6bu+v//5U7k5mkJUBtCjm7H+49RyDaPAyXIcUFVOIG5ke9mt55IRQFFcArXvEqEPpZ8PL2zo8C2XB13xkmPqt2/eAHzUa3aWi020c/6nA2dPn03J2WVVoUKnPHrszohvU+O+51uQvvCy9eXjZsw+hm+1jm1VNEYhDpKTevd+Z1bcNNqVdRGjZx2vol/Na8loVahZvktQmTlZCpJb/JyVKY7Uu8xrvtXrtDYSTRGVOgNNHrEfdqtR+rzrjOa1GoT5Ld4JW1r3eLVsXGsBEL/8Lr/ovU5V5DO8hKcNqv4uEiBUcu6NdLQ32S7OKVaRcsWrs5+4OuWhofw0YsXOJ1p52fDYWRROeM1zDlpEGXu83Efm2/ykR9gm3a/iBdla5gar+G0jzEfqfb5DWcqmfhEq/hIBsK66C3l+ic8RoawEVqdZO9Lm+/ySNw7Nd2+13jvANm9fpDI/QzMawZtnDGq33FvD3bmXwYVnT7+9NPPeHqPTzHPca9Wg0mcnAdkK4r8qr3ZfXrOXmVA1sYrNKyUJ+klxs60ZV6uT2vy9vfgxbGvSaiSCcO19s/Kqi4X9WC4IWK2e7QKPFqa97q/sO9hhOI57zwq/p1f7C7Iuhsu1rdeljzEG5hz8IFXofRwhu5k6VelzszGESml5hN5nWESyo1zVpX7nWEs16F037Nv7d0qz9FXuNV+/Pgb5u20ISm2B8eSr2u3sNV9xrUiauNfwHljHr1tvJsJ3otCrUPv34Me83es8LRohl4iz/r1bJieTI97FSzGhXkGSjzat+eiheaOrZ7Ln/KcsYq9bvVeRaOYdeEypxBr53/C3xJk6Vsgtewjgj+nEXKvB7J+jVTUeg1XLrg07LsCV5TqyupJ5Ru2ASv1qhpF/kvvA73a2SC13GmeM3u0+n6mpjZ66T1NTyggr9ZpcXlitCaXidBKAoqgFe84lUgFAUVwGtFrzA/7nZ2CEVBBfCKV7wKhKKgAnjFK14FQlFQAbziFa8CoSioAF7xileBUBRUAK94xatAKAoqgFe84lUgFAUVwCte8SoQioIK4BWveBUIRUEF8IpXvAqEoqACeMUrXgVCUVABvOIVrwKhKKgAXvGKV4FQFFQAr3jFq0AoCiqAV7ziVSAUBRXAK17xKhCKggrgFa94FQhFQQXwile8CoSioAJ4xSteBUJRUIHgFebH9MLMLBa/AZ99J4TcV8WKAAAAAElFTkSuQmCC'

const thinBorder: Partial<ExcelJS.Borders> = {
  top: { style: 'thin' }, bottom: { style: 'thin' },
  left: { style: 'thin' }, right: { style: 'thin' },
}

function sc(
  cell: ExcelJS.Cell,
  opts: {
    value?: ExcelJS.CellValue
    bold?: boolean
    fontSize?: number
    bgColor?: string
    align?: ExcelJS.Alignment['horizontal']
    valign?: ExcelJS.Alignment['vertical']
    border?: Partial<ExcelJS.Borders>
    wrapText?: boolean
    blue?: boolean
  }
) {
  if (opts.value !== undefined) cell.value = opts.value
  cell.font = {
    name: 'Malgun Gothic',
    size: opts.fontSize ?? 8,
    bold: opts.bold ?? false,
    color: { argb: opts.blue ? 'FF0000FF' : 'FF000000' },
  }
  cell.alignment = {
    horizontal: opts.align ?? 'center',
    vertical: opts.valign ?? 'middle',
    wrapText: opts.wrapText !== false,
  }
  if (opts.bgColor) {
    cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: opts.bgColor } }
  }
  if (opts.border) cell.border = opts.border
}

export async function generateOrderExcel(orders: OrderExcelItem[]) {
  if (orders.length === 0) return

  const first = orders[0]
  const today = dayjs().format('YYMMDD')
  const shortName = first.productName.length > 12
    ? first.productName.substring(0, 12)
    : first.productName
  const fileName = `화이트샌즈 발주서(${first.factory}_${shortName}_${first.orderRound})${today}.xlsx`

  const wb = new ExcelJS.Workbook()
  wb.creator = 'White Sands'
  wb.created = new Date()

  const ws = wb.addWorksheet('발주서', {
    pageSetup: { paperSize: 9, orientation: 'portrait' },
  })

  // 컬럼 너비
  ws.columns = [
    { width: 2 },   // A
    { width: 9 },   // B
    { width: 22 },  // C
    { width: 15 },  // D
    { width: 13 },  // E
    { width: 6 },   // F
    { width: 10 },  // G
    { width: 13 },  // H
    { width: 8 },   // I
    { width: 30 },  // J
    { width: 12 },  // K
  ]

  // 행 높이
  ws.getRow(1).height = 5
  ws.getRow(2).height = 100
  for (let r = 3; r <= 8; r++) ws.getRow(r).height = 20
  ws.getRow(9).height = 5
  for (let r = 10; r <= 15; r++) ws.getRow(r).height = 20
  ws.getRow(16).height = 5
  ws.getRow(17).height = 30
  for (let r = 18; r <= 35; r++) ws.getRow(r).height = 20

  // ── Row 2: 제목 ───────────────────────────────────────────────
  ws.mergeCells('B2:E2')
  sc(ws.getCell('B2'), {
    value: '발 주 서\n發 注 書',
    bold: true, fontSize: 16,
    bgColor: 'FFFFFFFF', border: thinBorder,
  })

  // ── Row 3~8: 발주서 세로 텍스트 ──────────────────────────────
  ws.mergeCells('F3:F8')
  sc(ws.getCell('F3'), { value: '발發\n\n주注\n\n서書', fontSize: 9 })

  // ── 회사 정보 블록 ────────────────────────────────────────────
  ws.mergeCells('H3:J3')
  sc(ws.getCell('G3'), { value: '등록번호\n登彔番号', fontSize: 7, border: thinBorder })
  sc(ws.getCell('H3'), { value: '634-87-01986', fontSize: 7, border: thinBorder })

  ws.mergeCells('H4:H4')
  sc(ws.getCell('G4'), { value: '상호\n公司名', fontSize: 7, border: thinBorder })
  sc(ws.getCell('H4'), { value: '（株）NH GROUP', fontSize: 7, border: thinBorder })
  sc(ws.getCell('I4'), { value: '성명\n姓名', fontSize: 7, border: thinBorder })
  sc(ws.getCell('J4'), { value: '나경화', fontSize: 7, border: thinBorder })

  ws.mergeCells('H5:J5')
  sc(ws.getCell('G5'), { value: '사업장소재지\n地址', fontSize: 7, border: thinBorder })
  sc(ws.getCell('H5'), { value: 'Room 215,Acegoldtower,100,Gasandigital 1-ro\nGeumcheon-gu,Seoul,Republic of Korea', fontSize: 7, border: thinBorder })

  sc(ws.getCell('G6'), { value: '업태\n業態', fontSize: 7, border: thinBorder })
  sc(ws.getCell('H6'), { value: '제조업\n制造业', fontSize: 7, border: thinBorder })
  sc(ws.getCell('I6'), { value: '종목\n种类', fontSize: 7, border: thinBorder })
  sc(ws.getCell('J6'), { value: '모자 제조업\n帽子 制造业', fontSize: 7, border: thinBorder })

  ws.mergeCells('H7:J7')
  sc(ws.getCell('G7'), { value: '전화번호\n電話番号', fontSize: 7, border: thinBorder })
  sc(ws.getCell('H7'), { value: '010-8233-3530', fontSize: 7, border: thinBorder })

  ws.mergeCells('H8:J8')
  sc(ws.getCell('G8'), { value: 'E-mail', fontSize: 7, border: thinBorder })
  sc(ws.getCell('H8'), { value: 'production@whitesands.co.kr', fontSize: 7, blue: true, border: thinBorder })

  // ── Row 10~15: 상품 정보 ──────────────────────────────────────
  const productRows: [string, string, string, string][] = [
    ['F10', 'G10', 'BRAND',     first.brand || '화이트샌즈'],
    ['F11', 'G11', 'ITEM NAME', first.productName],
    ['F12', 'G12', 'ITEM CODE', first.productCode],
    ['F13', 'G13', 'COLOR',     orders.map(o => `${o.colorCode}(${o.colorName})`).join(', ')],
    ['F14', 'G14', 'SEASON',    first.orderRound],
    ['F15', 'G15', 'FACTORY',   first.factory],
  ]

  productRows.forEach(([labelStart, labelEnd, label, value], i) => {
    const row = 10 + i
    ws.mergeCells(`${labelStart}:${labelEnd}`)
    ws.mergeCells(`H${row}:J${row}`)
    sc(ws.getCell(labelStart), { value: label, fontSize: 8, bold: true, border: thinBorder })
    sc(ws.getCell(`H${row}`), { value, fontSize: 8, border: thinBorder, align: 'left', wrapText: false })
  })

  // ── Row 17: 헤더 ─────────────────────────────────────────────
  ws.mergeCells('E17:F17')
  ws.mergeCells('G17:H17')

  const hStyle = { bold: true, fontSize: 8, bgColor: 'FFD9D9D9', border: thinBorder }
  sc(ws.getCell('B17'), { ...hStyle, value: '차수\n次数' })
  sc(ws.getCell('C17'), { ...hStyle, value: '색상\n颜色' })
  sc(ws.getCell('D17'), { ...hStyle, value: '발주 수량\n订单数量(PCS)' })
  sc(ws.getCell('E17'), { ...hStyle, value: '발주일\n下单日期' })
  sc(ws.getCell('G17'), { ...hStyle, value: '납기 요청일\n交期' })
  sc(ws.getCell('I17'), { ...hStyle, value: '단가\n单价' })
  sc(ws.getCell('J17'), { ...hStyle, value: '부자재 가격 (본사에서 제공)\n辅料价格 (辅料由总部提供。)' })

  // ── Row 18~: 발주 데이터 ─────────────────────────────────────
  orders.forEach((order, idx) => {
    const r = 18 + idx
    ws.mergeCells(`E${r}:F${r}`)
    ws.mergeCells(`G${r}:H${r}`)

    const dueDate = order.expectedDeliveryDate
      || dayjs(order.orderDate).add(35, 'day').format('YYYY-MM-DD')

    sc(ws.getCell(`B${r}`), { value: order.orderRound, fontSize: 8, border: thinBorder })
    sc(ws.getCell(`C${r}`), { value: `${order.colorCode} (${order.colorName})`, fontSize: 8, border: thinBorder })
    sc(ws.getCell(`D${r}`), { value: order.orderQty, fontSize: 8, border: thinBorder })
    sc(ws.getCell(`E${r}`), { value: order.orderDate, fontSize: 8, border: thinBorder })
    sc(ws.getCell(`G${r}`), { value: dueDate, fontSize: 8, border: thinBorder })
    sc(ws.getCell(`I${r}`), { value: '确认单价', fontSize: 8, border: thinBorder })
    sc(ws.getCell(`J${r}`), { value: order.materials.join(', '), fontSize: 8, border: thinBorder, align: 'left' })
  })

  // ── 합계 행 ──────────────────────────────────────────────────
  const totalR = 18 + orders.length
  ws.mergeCells(`E${totalR}:F${totalR}`)
  ws.mergeCells(`G${totalR}:H${totalR}`)
  sc(ws.getCell(`C${totalR}`), { value: 'TOTAL', bold: true, fontSize: 9, border: thinBorder, bgColor: 'FFFFF2CC' })
  sc(ws.getCell(`D${totalR}`), {
    value: orders.reduce((s, o) => s + o.orderQty, 0),
    bold: true, fontSize: 9, border: thinBorder, bgColor: 'FFFFF2CC',
  })

  // ── 로고 이미지 삽입 ─────────────────────────────────────────
  try {
    const logoArr = Uint8Array.from(atob(WS_LOGO_B64), c => c.charCodeAt(0))
    const logoId = wb.addImage({ buffer: logoArr.buffer, extension: 'png' })
    ws.addImage(logoId, { tl: { col: 6.1, row: 1.1 }, ext: { width: 130, height: 40 } })
  } catch (e) {
    console.warn('Logo insert failed:', e)
  }

  // ── 상품 이미지 삽입 ─────────────────────────────────────────
  if (first.imageUrl) {
    try {
      let imgB64 = ''
      let ext: 'jpeg' | 'png' = 'jpeg'

      if (first.imageUrl.startsWith('data:')) {
        const [meta, b64] = first.imageUrl.split(',')
        imgB64 = b64
        ext = meta.includes('png') ? 'png' : 'jpeg'
      } else {
        const res = await fetch(first.imageUrl)
        const blob = await res.blob()
        ext = blob.type.includes('png') ? 'png' : 'jpeg'
        imgB64 = await new Promise<string>(resolve => {
          const reader = new FileReader()
          reader.onload = () => resolve((reader.result as string).split(',')[1])
          reader.readAsDataURL(blob)
        })
      }
      const imgArr = Uint8Array.from(atob(imgB64), c => c.charCodeAt(0))
      const imgId = wb.addImage({ buffer: imgArr.buffer, extension: ext })
      ws.addImage(imgId, { tl: { col: 1.1, row: 1.1 }, ext: { width: 140, height: 130 } })
    } catch (e) {
      console.warn('Product image insert failed:', e)
    }
  }

  // ── 파일 다운로드 ─────────────────────────────────────────────
  const buffer = await wb.xlsx.writeBuffer()
  const blob = new Blob([buffer], {
    type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  })
  saveAs(blob, fileName)
}
