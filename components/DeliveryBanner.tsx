'use client'
import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { AlertTriangle, X } from 'lucide-react'
import dayjs from 'dayjs'
import { supabase, rowToOrder } from '@/lib/supabase'
import { Order } from '@/lib/types'

export default function DeliveryBanner() {
  const [urgentOrders, setUrgentOrders] = useState<Order[]>([])
  const [dismissed, setDismissed] = useState(false)
  const router = useRouter()

  const fetchUrgent = async () => {
    const today = dayjs().format('YYYY-MM-DD')
    const in7days = dayjs().add(7, 'day').format('YYYY-MM-DD')
    const { data } = await supabase
      .from('orders')
      .select('*')
      .gte('expected_delivery_date', today)
      .lte('expected_delivery_date', in7days)
      .neq('status', '입고완료')
    if (data) setUrgentOrders(data.map(rowToOrder))
  }

  useEffect(() => {
    fetchUrgent()
    const channel = supabase
      .channel('delivery-banner')
      .on('postgres_changes', { event: '*', schema: 'public', table: 'orders' }, fetchUrgent)
      .subscribe()
    return () => { supabase.removeChannel(channel) }
  }, [])

  if (urgentOrders.length === 0 || dismissed) return null

  const first = urgentOrders[0]
  const daysLeft = dayjs(first.expectedDeliveryDate).diff(dayjs(), 'day')

  return (
    <div className="bg-gray-900 text-white px-4 py-2.5 flex items-center justify-between gap-4">
      <button
        onClick={() => router.push('/')}
        className="flex items-center gap-2 flex-1 text-left hover:opacity-90 transition-opacity"
      >
        <AlertTriangle size={16} className="flex-shrink-0" />
        <span className="text-sm font-medium">
          ⚠️ 납기 임박! &nbsp;
          <strong>{first.productName}</strong> ({first.colorName}) D-{daysLeft}일
          {urgentOrders.length > 1 && ` 외 ${urgentOrders.length - 1}건`}
          &nbsp;— 클릭하여 확인
        </span>
      </button>
      <button onClick={() => setDismissed(true)} className="flex-shrink-0 hover:opacity-70">
        <X size={16} />
      </button>
    </div>
  )
}
