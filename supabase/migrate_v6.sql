-- 부자재 마스터 테이블
CREATE TABLE IF NOT EXISTS accessories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  category text NOT NULL DEFAULT '기타',  -- 라벨류 / 포장재 / 원단 / 장식 / 기타
  spec text DEFAULT '',                    -- 규격/사이즈
  unit text DEFAULT 'EA',                 -- 단위
  stock_qty integer DEFAULT 0,            -- 현재 재고
  safety_qty integer DEFAULT 0,           -- 안전재고 수량
  supplier text DEFAULT '',               -- 공급업체
  image_url text,
  note text DEFAULT '',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- 아이템별 필요 부자재 연결 테이블
CREATE TABLE IF NOT EXISTS product_accessories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_code text NOT NULL,
  product_name text NOT NULL,
  accessory_id uuid REFERENCES accessories(id) ON DELETE CASCADE,
  required_qty integer DEFAULT 1,         -- 아이템 1개당 필요 수량
  note text DEFAULT '',
  created_at timestamptz DEFAULT now()
);

-- warehouse_qty를 warehouse_logs 합계로 자동 동기화하는 함수
CREATE OR REPLACE FUNCTION sync_warehouse_qty()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE orders
  SET warehouse_qty = (
    SELECT COALESCE(SUM(qty), 0)
    FROM warehouse_logs
    WHERE order_id = COALESCE(NEW.order_id, OLD.order_id)
  )
  WHERE id = COALESCE(NEW.order_id, OLD.order_id);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- warehouse_logs 변경 시 자동으로 orders.warehouse_qty 동기화
DROP TRIGGER IF EXISTS trg_sync_warehouse_qty ON warehouse_logs;
CREATE TRIGGER trg_sync_warehouse_qty
AFTER INSERT OR UPDATE OR DELETE ON warehouse_logs
FOR EACH ROW EXECUTE FUNCTION sync_warehouse_qty();

-- Realtime 활성화
ALTER PUBLICATION supabase_realtime ADD TABLE accessories;
ALTER PUBLICATION supabase_realtime ADD TABLE product_accessories;

-- updated_at 자동 갱신
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN NEW.updated_at = now(); RETURN NEW; END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER accessories_updated_at BEFORE UPDATE ON accessories
FOR EACH ROW EXECUTE FUNCTION update_updated_at();
