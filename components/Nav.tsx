'use client'
import { useState, useEffect } from 'react'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { Lock, Unlock } from 'lucide-react'
import AdminGate from './AdminGate'
import { ADMIN_PASSWORD } from '@/lib/constants'

export default function Nav() {
  const pathname = usePathname()
  const [isAdmin, setIsAdmin] = useState(false)
  const [showAdminModal, setShowAdminModal] = useState(false)

  useEffect(() => {
    setIsAdmin(sessionStorage.getItem('ws_admin_mode') === 'true')
    const sync = () => setIsAdmin(sessionStorage.getItem('ws_admin_mode') === 'true')
    window.addEventListener('storage', sync)
    return () => window.removeEventListener('storage', sync)
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
      <nav className="sticky top-0 z-50 bg-white border-b border-gray-200">
        <div className="w-full px-6">
          <div className="flex items-center justify-between h-14">
            {/* 로고 */}
            <Link href="/" className="flex items-center flex-shrink-0">
              <img
                src="/logo.svg"
                alt="WHITE SANDS"
                className="h-5 w-auto"
                style={{ filter: 'brightness(0)' }}
              />
            </Link>

            {/* 데스크탑 탭 */}
            <div className="hidden md:flex items-center gap-0.5 flex-1 ml-8">
              {navLinks.map(link => (
                <Link
                  key={link.href}
                  href={link.href}
                  className={`px-3.5 py-2 rounded-lg text-sm font-medium transition-colors ${
                    pathname === link.href
                      ? 'bg-gray-100 text-gray-900'
                      : 'text-gray-500 hover:text-gray-800 hover:bg-gray-50'
                  }`}
                >
                  {link.label}
                </Link>
              ))}
            </div>

            {/* 관리자 버튼 */}
            <button
              onClick={() => isAdmin ? handleLogout() : setShowAdminModal(true)}
              className={`flex items-center gap-1.5 text-xs px-3 py-1.5 rounded-lg border transition-colors ${
                isAdmin
                  ? 'border-gray-200 bg-gray-50 text-gray-700'
                  : 'border-transparent text-gray-400 hover:text-gray-600 hover:bg-gray-50'
              }`}
            >
              {isAdmin
                ? <><Unlock size={13} /><span className="hidden sm:inline">관리자 모드</span></>
                : <><Lock size={13} /><span className="hidden sm:inline">관리자</span></>
              }
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
                    ? 'bg-gray-100 text-gray-900'
                    : 'text-gray-500 hover:text-gray-700'
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
