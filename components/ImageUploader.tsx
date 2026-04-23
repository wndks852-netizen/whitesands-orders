'use client'
import { useState, useRef } from 'react'
import { Upload, X } from 'lucide-react'
import { uploadImageToStorage } from '@/lib/supabase'

interface Props {
  currentImageUrl?: string | null
  productCode: string
  onUploaded: (url: string) => void
}

export default function ImageUploader({ currentImageUrl, productCode, onUploaded }: Props) {
  const [preview, setPreview] = useState<string | null>(currentImageUrl || null)
  const [uploading, setUploading] = useState(false)
  const [dragging, setDragging] = useState(false)
  const inputRef = useRef<HTMLInputElement>(null)

  const handleFile = async (file: File) => {
    if (!file.type.startsWith('image/')) return
    const reader = new FileReader()
    reader.onload = e => setPreview(e.target?.result as string)
    reader.readAsDataURL(file)
    setUploading(true)
    const url = await uploadImageToStorage(file, productCode || 'temp')
    setUploading(false)
    if (url) onUploaded(url)
  }

  const onDrop = (e: React.DragEvent) => {
    e.preventDefault(); setDragging(false)
    const file = e.dataTransfer.files[0]
    if (file) handleFile(file)
  }

  return (
    <div>
      {preview ? (
        <div className="relative inline-block">
          <img src={preview} alt="상품 이미지" className="w-32 h-32 object-cover rounded-xl border border-gray-200" />
          <button
            onClick={() => { setPreview(null); onUploaded('') }}
            className="absolute -top-2 -right-2 bg-red-500 text-white rounded-full p-0.5"
          >
            <X size={12} />
          </button>
          <button
            onClick={() => inputRef.current?.click()}
            className="mt-2 w-full text-xs text-gray-500 hover:text-gray-700 border border-gray-200 rounded-lg py-1"
          >
            이미지 교체
          </button>
        </div>
      ) : (
        <div
          onDragOver={e => { e.preventDefault(); setDragging(true) }}
          onDragLeave={() => setDragging(false)}
          onDrop={onDrop}
          onClick={() => inputRef.current?.click()}
          className={`w-32 h-32 rounded-xl border-2 border-dashed flex flex-col items-center justify-center cursor-pointer transition-colors ${
            dragging ? 'border-blue-400 bg-blue-50' : 'border-gray-300 hover:border-gray-400 hover:bg-gray-50'
          }`}
        >
          {uploading ? (
            <div className="text-xs text-gray-400">업로드 중...</div>
          ) : (
            <>
              <Upload size={20} className="text-gray-400 mb-1" />
              <span className="text-xs text-gray-400 text-center px-2">클릭 또는<br />드래그</span>
            </>
          )}
        </div>
      )}
      <input ref={inputRef} type="file" accept="image/*" className="hidden" onChange={e => e.target.files?.[0] && handleFile(e.target.files[0])} />
    </div>
  )
}
