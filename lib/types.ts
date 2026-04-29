export type Category = '양산' | '모자' | '악세사리' | '블랙샌즈'
export type OrderStatus = '발주완료' | '계약금송금대기' | '샘플중' | '생산중' | '화물출고' | '입고완료'
export type PaymentType = '계약금선납' | '바로생산'
export type DeliveryDest = '주희물류' | '제이에스컴퍼니'

export interface Color {
  colorCode: string
  colorName: string
}

export interface Product {
  id: string
  brand: string
  category: Category
  productCode: string
  productName: string
  imageUrl: string | null
  colors: Color[]
  requiredMaterials: string[]
  size: string
  createdAt?: string
}

export interface Order {
  id: string
  orderDate: string
  orderRound: string
  category: Category
  productId: string | null
  productCode: string
  productName: string
  imageUrl: string | null
  colorCode: string
  colorName: string
  orderQty: number
  factory: string
  factoryPaymentType: PaymentType
  contractDepositPaid: boolean
  deliveryDestination: DeliveryDest
  expectedDeliveryDate: string | null
  status: OrderStatus
  materials: Record<string, boolean>
  warehouseQty: number
  memo: string
  createdAt?: string
  updatedAt?: string
}

export interface WarehouseLog {
  id: string
  orderId: string
  logDate: string
  qty: number
  note: string
  createdAt: string
}

export type AccessoryCategory = '라벨류' | '포장재' | '원단' | '장식' | '기타'

export interface Accessory {
  id: string
  name: string
  category: AccessoryCategory
  spec: string
  unit: string
  stockQty: number
  safetyQty: number
  supplier: string
  imageUrl: string | null
  note: string
  createdAt?: string
  updatedAt?: string
}

export interface ProductAccessory {
  id: string
  productCode: string
  productName: string
  accessoryId: string
  requiredQty: number
  note: string
  createdAt?: string
  accessory?: Accessory
}

export interface MemoLog {
  id: string
  orderId: string
  logDate: string
  content: string
  createdAt?: string
}
