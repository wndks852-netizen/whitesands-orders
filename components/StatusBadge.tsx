import { STATUS_COLORS } from '@/lib/constants'

export default function StatusBadge({ status }: { status: string }) {
  return (
    <span className={`inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium border ${STATUS_COLORS[status] || 'bg-gray-100 text-gray-700 border-gray-200'}`}>
      {status}
    </span>
  )
}
