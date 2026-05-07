export const CATEGORIES = ['양산', '모자', '악세사리', '블랙샌즈'] as const
export const ORDER_STATUSES = [
  '발주완료', '계약금송금대기', '샘플중', '생산중',
  '화물출고', '1차입고', '2차입고', '3차입고', '4차입고', '입고완료'
] as const
export const DELIVERY_DESTS = ['주희물류', '제이에스컴퍼니'] as const
export const ALL_MATERIALS = ['원단', '행택', '지퍼백', '메인라벨', '케어라벨', '장식'] as const
export const ADMIN_PASSWORD = 'admin1234'

// 생산처 전체 목록 (빠른선택용)
export const QUICK_FACTORIES = [
  '중국 소니아공장',
  '하이호프',
  '베트남공장',
  '준컴퍼니',
  'SB STYLE LAB',
  '중국 진상',
  '중국 신공장',
  '중국 가오다',
  '다다',
  '중국 J&F',
  '중국 용리',
  'MCRN',
  '중국 잉보',
  '모리스',
  '중국 판미라',
  '중국 판베이시',
  '중국 욱채완구',
  '국내공장',
]

export const STATUS_COLORS: Record<string, string> = {
  '발주완료':       'bg-gray-100 text-gray-600 border-gray-200',
  '계약금송금대기': 'bg-amber-50 text-amber-700 border-amber-200',
  '샘플중':         'bg-yellow-50 text-yellow-700 border-yellow-200',
  '생산중':         'bg-sky-50 text-sky-700 border-sky-200',
  '화물출고':       'bg-violet-50 text-violet-700 border-violet-200',
  '1차입고':        'bg-emerald-50 text-emerald-600 border-emerald-200',
  '2차입고':        'bg-emerald-50 text-emerald-600 border-emerald-200',
  '3차입고':        'bg-emerald-50 text-emerald-600 border-emerald-200',
  '4차입고':        'bg-emerald-50 text-emerald-600 border-emerald-200',
  '입고완료':       'bg-emerald-100 text-emerald-700 border-emerald-300',
}

export const STATUS_GROUPS = [
  { label: '전체',    statuses: [] as string[] },
  { label: '진행중',  statuses: ['발주완료', '계약금송금대기', '샘플중', '생산중'] },
  { label: '화물출고', statuses: ['화물출고'] },
  { label: '입고완료', statuses: ['1차입고', '2차입고', '3차입고', '4차입고', '입고완료'] },
]

// 시즌 목록 (최신순)
export const SEASONS = [
  '26FW', '26SS', '25FW', '25SS', '24FW', '24SS',
] as const

export type Season = typeof SEASONS[number]

// 차수 목록
export const ORDER_ROUNDS = [
  '26-1차', '26-2차', '26-3차', '26-4차', '26-5차', '26-6차',
  '26-7차', '26-8차', '26-9차', '26-10차', '26-11차', '26-12차',
  '25-1차', '25-2차', '25-3차', '25-4차', '25-5차', '25-6차',
] as const

export const BRAND_COLORS = {
  primary: '#1B2A4A',
  accent: '#C9A96E',
  bg: '#F8F9FA',
}
