'use client'
import { useState } from 'react'
import { X, Lock } from 'lucide-react'

interface Props {
  onSuccess: () => void
  onClose: () => void
  password: string
}

export default function AdminGate({ onSuccess, onClose, password }: Props) {
  const [input, setInput] = useState('')
  const [error, setError] = useState(false)

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault()
    if (input === password) {
      onSuccess()
    } else {
      setError(true)
      setInput('')
    }
  }

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50">
      <div className="bg-white rounded-2xl shadow-2xl p-8 w-full max-w-sm mx-4">
        <div className="flex justify-between items-center mb-6">
          <div className="flex items-center gap-2">
            <Lock size={20} style={{ color: '#1B2A4A' }} />
            <h2 className="text-lg font-bold" style={{ color: '#1B2A4A' }}>관리자 로그인</h2>
          </div>
          <button onClick={onClose} className="text-gray-400 hover:text-gray-600">
            <X size={20} />
          </button>
        </div>
        <form onSubmit={handleSubmit} className="space-y-4">
          <input
            type="password"
            value={input}
            onChange={e => { setInput(e.target.value); setError(false) }}
            placeholder="비밀번호 입력"
            autoFocus
            className={`w-full border rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 ${
              error ? 'border-red-400 focus:ring-red-200' : 'border-gray-200 focus:ring-blue-200'
            }`}
          />
          {error && <p className="text-red-500 text-xs">비밀번호가 올바르지 않습니다.</p>}
          <button
            type="submit"
            className="w-full py-3 rounded-xl text-white font-semibold text-sm transition-opacity hover:opacity-90"
            style={{ backgroundColor: '#1B2A4A' }}
          >
            로그인
          </button>
        </form>
      </div>
    </div>
  )
}
