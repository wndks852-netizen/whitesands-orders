'use client'
import dayjs from 'dayjs'

const DAY_LABELS = ['일', '월', '화', '수', '목', '금', '토']

interface Props {
  value: string
  onChange: (value: string) => void
  className?: string
}

export default function DatePickerWithDay({ value, onChange, className = '' }: Props) {
  const date = value ? dayjs(value) : null
  const dayOfWeek = date ? date.day() : null
  const dayLabel = dayOfWeek !== null ? DAY_LABELS[dayOfWeek] : null

  const dayColor =
    dayOfWeek === 0 ? 'text-red-500' :
    dayOfWeek === 6 ? 'text-blue-500' :
    'text-gray-400'

  return (
    <div>
      <div className="relative">
        <input
          type="date"
          value={value}
          onChange={e => onChange(e.target.value)}
          className={`w-full border border-gray-200 rounded-xl px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-200 ${className}`}
        />
        {dayLabel && (
          <span className={`absolute right-3 top-1/2 -translate-y-1/2 text-xs font-bold ${dayColor} pointer-events-none`}>
            ({dayLabel})
          </span>
        )}
      </div>
      {date && (
        <p className={`text-xs mt-1 ${dayColor}`}>
          {date.format('YYYY년 M월 D일')} ({dayLabel}요일)
        </p>
      )}
    </div>
  )
}
