import { createClient } from '@supabase/supabase-js'
import { Product, Order } from './types'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

// DB row → 앱 타입 변환
export function rowToProduct(row: any): Product {
  return {
    id: row.id,
    brand: row.brand,
    category: row.category,
    productCode: row.product_code,
    productName: row.product_name,
    imageUrl: row.image_url,
    colors: row.colors || [],
    requiredMaterials: row.required_materials || [],
    size: row.size || 'ONE SIZE',
    createdAt: row.created_at,
  }
}

export function rowToOrder(row: any): Order {
  return {
    id: row.id,
    orderDate: row.order_date,
    orderRound: row.order_round || '',
    category: row.category,
    productId: row.product_id,
    productCode: row.product_code,
    productName: row.product_name,
    imageUrl: row.image_url,
    colorCode: row.color_code,
    colorName: row.color_name,
    orderQty: row.order_qty,
    factory: row.factory,
    factoryPaymentType: row.factory_payment_type,
    contractDepositPaid: row.contract_deposit_paid,
    deliveryDestination: row.delivery_destination,
    expectedDeliveryDate: row.expected_delivery_date,
    status: row.status,
    materials: row.materials || {},
    warehouseQty: row.warehouse_qty,
    memo: row.memo || '',
    createdAt: row.created_at,
    updatedAt: row.updated_at,
  }
}

// 이미지를 Supabase Storage에 업로드하고 public URL 반환
export async function uploadImageToStorage(file: File, productCode: string): Promise<string | null> {
  const ext = file.name.split('.').pop() || 'jpg'
  const path = `products/${productCode}_${Date.now()}.${ext}`
  const { error } = await supabase.storage
    .from('product-images')
    .upload(path, file, { upsert: true, contentType: file.type })
  if (error) { console.error('Upload error:', error); return null }
  const { data } = supabase.storage.from('product-images').getPublicUrl(path)
  return data.publicUrl
}
