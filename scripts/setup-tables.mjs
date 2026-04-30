const SUPABASE_URL = 'https://sleltqxmusppbrxzetkr.supabase.co'
const SUPABASE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNsZWx0cXhtdXNwcGJyeHpldGtyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY4Mjg0NzIsImV4cCI6MjA5MjQwNDQ3Mn0.UrFsuWY_nQI1BUQ-uDM1kwLfLiXgnPdGFrnRvvGuWo8'

const SQL = `
CREATE TABLE IF NOT EXISTS warehouse_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  qty integer NOT NULL DEFAULT 0,
  note text DEFAULT '',
  created_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS order_memo_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  content text NOT NULL,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE orders ADD COLUMN IF NOT EXISTS warehouse_qty integer DEFAULT 0;
ALTER TABLE warehouse_logs DISABLE ROW LEVEL SECURITY;
ALTER TABLE order_memo_logs DISABLE ROW LEVEL SECURITY;
`

async function run() {
  console.log('Supabase 테이블 생성 중...')

  const res = await fetch(`${SUPABASE_URL}/rest/v1/rpc/exec_sql`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'apikey': SUPABASE_KEY,
      'Authorization': `Bearer ${SUPABASE_KEY}`,
    },
    body: JSON.stringify({ sql: SQL }),
  })

  if (!res.ok) {
    console.log('exec_sql 미지원 → 테이블 존재 여부 직접 확인')
    await checkAndReport()
    return
  }

  const data = await res.json()
  console.log('결과:', data)
  await checkAndReport()
}

async function checkAndReport() {
  const headers = {
    'apikey': SUPABASE_KEY,
    'Authorization': `Bearer ${SUPABASE_KEY}`,
  }

  const r1 = await fetch(`${SUPABASE_URL}/rest/v1/warehouse_logs?limit=1`, { headers })
  const t1 = await r1.text()
  if (r1.ok) {
    console.log('✅ warehouse_logs 테이블 존재')
  } else {
    console.log('❌ warehouse_logs 없음:', t1)
    console.log('')
    console.log('========================================')
    console.log('🚨 Supabase SQL Editor에서 아래 SQL을 실행해주세요:')
    console.log('   URL: https://sleltqxmusppbrxzetkr.supabase.co')
    console.log('   SQL Editor → New query → 붙여넣기 → Run')
    console.log('========================================')
    console.log(`
CREATE TABLE IF NOT EXISTS warehouse_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  qty integer NOT NULL DEFAULT 0,
  note text DEFAULT '',
  created_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS order_memo_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  content text NOT NULL,
  created_at timestamptz DEFAULT now()
);

ALTER TABLE orders ADD COLUMN IF NOT EXISTS warehouse_qty integer DEFAULT 0;
ALTER TABLE warehouse_logs DISABLE ROW LEVEL SECURITY;
ALTER TABLE order_memo_logs DISABLE ROW LEVEL SECURITY;
    `)
  }

  const r2 = await fetch(`${SUPABASE_URL}/rest/v1/order_memo_logs?limit=1`, { headers })
  if (r2.ok) {
    console.log('✅ order_memo_logs 테이블 존재')
  } else {
    console.log('❌ order_memo_logs 없음')
  }
}

run().catch(console.error)
