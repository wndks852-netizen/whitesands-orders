-- 메모 로그 테이블 (날짜별 기록용)
CREATE TABLE IF NOT EXISTS order_memo_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id uuid NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
  log_date date NOT NULL DEFAULT current_date,
  content text NOT NULL,
  created_at timestamptz DEFAULT now()
);
ALTER PUBLICATION supabase_realtime ADD TABLE order_memo_logs;
