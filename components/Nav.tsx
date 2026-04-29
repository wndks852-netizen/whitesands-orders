'use client'
import { useState, useEffect } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { Lock, Unlock, Umbrella } from 'lucide-react'
import AdminGate from './AdminGate'
import { ADMIN_PASSWORD } from '@/lib/constants'

export default function Nav() {
  const pathname = usePathname()
  const [isAdmin, setIsAdmin] = useState(false)
  const [showAdminModal, setShowAdminModal] = useState(false)

  useEffect(() => {
    setIsAdmin(sessionStorage.getItem('ws_admin_mode') === 'true')
  }, [])

  const handleAdminSuccess = () => {
    sessionStorage.setItem('ws_admin_mode', 'true')
    setIsAdmin(true)
    setShowAdminModal(false)
  }

  const handleLogout = () => {
    sessionStorage.removeItem('ws_admin_mode')
    setIsAdmin(false)
  }

  const navLinks = [
    { href: '/', label: '발주현황' },
    { href: '/incoming', label: '입고현황' },
    { href: '/accessories', label: '부자재' },
    ...(isAdmin ? [
      { href: '/admin/products', label: '상품관리' },
      { href: '/admin/orders', label: '발주등록' },
      { href: '/admin/accessories', label: '부자재관리' },
      { href: '/admin/accessories/product-link', label: '부자재연결' },
    ] : []),
  ]

  return (
    <>
      <nav style={{ backgroundColor: '#1B2A4A' }} className="sticky top-0 z-50 shadow-lg">
        <div className="max-w-7xl mx-auto px-4">
          <div className="flex items-center justify-between h-16">
            <div className="flex items-center gap-8">
              <Link href="/" className="flex items-center gap-2 text-white font-bold text-lg tracking-wide">
                <Umbrella size={22} style={{ color: '#C9A96E' }} />
                <span>WHITE SANDS</span>
              </Link>
              <div className="hidden md:flex gap-1">
                {navLinks.map(link => (
                  <Link
                    key={link.href}
                    href={link.href}
                    className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                      pathname === link.href
                        ? 'text-white bg-white/20'
                        : 'text-white/70 hover:text-white hover:bg-white/10'
                    }`}
                  >
                    {link.label}
                  </Link>
                ))}
              </div>
            </div>
            <button
              onClick={() => isAdmin ? handleLogout() : setShowAdminModal(true)}
              className="flex items-center gap-2 text-white/70 hover:text-white transition-colors text-sm px-3 py-2 rounded-lg hover:bg-white/10"
            >
              {isAdmin ? <Unlock size={16} style={{ color: '#C9A96E' }} /> : <Lock size={16} />}
              <span className="hidden sm:inline">{isAdmin ? '관리자 모드' : '관리자'}</span>
            </button>
          </div>
          {/* 모바일 탭 */}
          <div className="md:hidden flex gap-1 pb-2 overflow-x-auto">
            {navLinks.map(link => (
              <Link
                key={link.href}
                href={link.href}
                className={`px-3 py-1.5 rounded-lg text-xs font-medium whitespace-nowrap transition-colors ${
                  pathname === link.href
                    ? 'text-white bg-white/20'
                    : 'text-white/60 hover:text-white'
                }`}
              >
                {link.label}
              </Link>
            ))}
          </div>
        </div>
      </nav>
      {showAdminModal && (
        <AdminGate
          onSuccess={handleAdminSuccess}
          onClose={() => setShowAdminModal(false)}
          password={ADMIN_PASSWORD}
        />
      )}
    </>
  )
}
