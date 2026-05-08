export function getSeasonStyle(season: string): string {
  if (!season) return ''
  const upper = season.toUpperCase()
  if (upper.includes('SS')) return 'bg-sky-500 text-white'
  if (upper.includes('FW')) return 'bg-gray-800 text-white'
  return 'bg-gray-900 text-white'
}
