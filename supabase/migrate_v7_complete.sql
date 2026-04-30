-- warehouse_logs 테이블 (입고 기록)
CREATE TABLE IF NOT EXISTS warehouse_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  qty integer NOT NULL DEFAULT 0,
  note text DEFAULT '',
  created_at timestamptz DEFAULT now()
);

-- order_memo_logs 테이블 (메모 기록)
CREATE TABLE IF NOT EXISTS order_memo_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  content text NOT NULL,
  created_at timestamptz DEFAULT now()
);

-- orders 테이블에 warehouse_qty 컬럼 추가 (없으면)
ALTER TABLE orders ADD COLUMN IF NOT EXISTS warehouse_qty integer DEFAULT 0;

-- RLS 비활성화 (인증 없이 접근 가능하도록)
ALTER TABLE warehouse_logs DISABLE ROW LEVEL SECURITY;
ALTER TABLE order_memo_logs DISABLE ROW LEVEL SECURITY;

-- Realtime 활성화
ALTER PUBLICATION supabase_realtime ADD TABLE warehouse_logs;
ALTER PUBLICATION supabase_realtime ADD TABLE order_memo_logs;
