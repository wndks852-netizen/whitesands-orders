import type { Metadata } from 'next'
import './globals.css'
import Nav from '@/components/Nav'
import DeliveryBanner from '@/components/DeliveryBanner'

export const metadata: Metadata = {
  title: 'White Sands 발주현황',
  description: '화이트샌즈 생산팀 발주 관리 시스템',
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="ko">
      <body>
        <Nav />
        <DeliveryBanner />
        <main className="max-w-7xl mx-auto px-4 py-6 min-h-screen">{children}</main>
        <footer className="text-center py-5 text-xs text-gray-300 border-t border-gray-100 bg-white">
          © 2026 White Sands Production Team
        </footer>
      </body>
    </html>
  )
}
