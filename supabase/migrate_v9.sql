-- orders 테이블에 season 컬럼 추가
ALTER TABLE orders ADD COLUMN IF NOT EXISTS season text DEFAULT '';

-- order_round 컬럼 확인 (없으면 추가)
ALTER TABLE orders ADD COLUMN IF NOT EXISTS order_round text DEFAULT '';

-- 인덱스 추가
CREATE INDEX IF NOT EXISTS idx_orders_season ON orders(season);
CREATE INDEX IF NOT EXISTS idx_orders_order_round ON orders(order_round);
