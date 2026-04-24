-- v5 마이그레이션: order_round 컬럼, warehouse_logs 테이블 추가

-- 1. orders 테이블에 order_round 컬럼 추가
ALTER TABLE orders ADD COLUMN IF NOT EXISTS order_round text DEFAULT '';

-- 2. warehouse_logs 테이블 생성
CREATE TABLE IF NOT EXISTS warehouse_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  qty integer NOT NULL DEFAULT 0,
  note text DEFAULT '',
  created_at timestamptz DEFAULT now()
);

-- 3. RLS 비활성화 (내부 앱)
ALTER TABLE warehouse_logs DISABLE ROW LEVEL SECURITY;

-- 4. 인덱스
CREATE INDEX IF NOT EXISTS warehouse_logs_order_id_idx ON warehouse_logs(order_id);
