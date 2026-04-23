'use client'
import { CheckSquare, Square } from 'lucide-react'
import { supabase } from '@/lib/supabase'

interface Props {
  orderId: string
  materials: Record<string, boolean>
  onChange: (materials: Record<string, boolean>) => void
  compact?: boolean
}

export default function MaterialChecklist({ orderId, materials, onChange, compact = false }: Props) {
  const toggle = async (key: string) => {
    const updated = { ...materials, [key]: !materials[key] }
    onChange(updated)
    await supabase.from('orders').update({ materials: updated }).eq('id', orderId)
  }

  if (compact) {
    return (
      <div className="flex flex-wrap gap-1">
        {Object.entries(materials).map(([key, checked]) => (
          <button
            key={key}
            onClick={() => toggle(key)}
            title={key}
            className={`w-5 h-5 rounded flex items-center justify-center transition-all text-xs font-bold ${
              checked
                ? 'bg-green-100 text-green-600 border border-green-300'
                : 'bg-gray-100 text-gray-400 border border-gray-200 hover:border-gray-300'
            }`}
          >
            {key.charAt(0)}
          </button>
        ))}
      </div>
    )
  }

  return (
    <div className="flex flex-wrap gap-1.5">
      {Object.entries(materials).map(([key, checked]) => (
        <button
          key={key}
          onClick={() => toggle(key)}
          className={`flex items-center gap-1 px-2 py-1 rounded-lg text-xs font-medium border transition-all ${
            checked
              ? 'bg-green-50 border-green-300 text-green-700'
              : 'bg-gray-50 border-gray-200 text-gray-500 hover:border-gray-300'
          }`}
        >
          {checked ? <CheckSquare size={11} className="text-green-500" /> : <Square size={11} />}
          {key}
        </button>
      ))}
    </div>
  )
}
