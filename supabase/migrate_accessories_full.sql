-- ============================================================
-- accessories 전체 셋업 (migrate_v6 + v2 통합본)
-- Supabase SQL Editor에서 실행하세요
-- ============================================================

-- 1. accessories 테이블 생성 (없으면)
CREATE TABLE IF NOT EXISTS accessories (
  id           uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  brand        text    NOT NULL DEFAULT '화이트샌즈',
  product_code text    NOT NULL DEFAULT '',
  name         text    NOT NULL,
  category     text    NOT NULL DEFAULT '기타',
  spec         text    DEFAULT '',
  unit         text    DEFAULT 'EA',
  stock_qty    integer DEFAULT 0,
  safety_qty   integer DEFAULT 0,
  supplier     text    DEFAULT '',
  cost         integer DEFAULT 0,
  image_url    text,
  note         text    DEFAULT '',
  created_at   timestamptz DEFAULT now(),
  updated_at   timestamptz DEFAULT now()
);

-- 2. 기존 테이블에 누락된 컬럼 추가 (이미 있으면 무시)
ALTER TABLE accessories ADD COLUMN IF NOT EXISTS brand        text    DEFAULT '화이트샌즈';
ALTER TABLE accessories ADD COLUMN IF NOT EXISTS product_code text    DEFAULT '';
ALTER TABLE accessories ADD COLUMN IF NOT EXISTS cost         integer DEFAULT 0;

-- 3. name unique 제약 제거 (중복 이름 허용)
ALTER TABLE accessories DROP CONSTRAINT IF EXISTS accessories_name_key;

-- 4. product_accessories 연결 테이블 생성 (없으면)
CREATE TABLE IF NOT EXISTS product_accessories (
  id            uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  product_code  text NOT NULL,
  product_name  text NOT NULL,
  accessory_id  uuid REFERENCES accessories(id) ON DELETE CASCADE,
  required_qty  integer DEFAULT 1,
  note          text    DEFAULT '',
  created_at    timestamptz DEFAULT now()
);

-- 5. RLS 비활성화 (anon 삽입 허용)
ALTER TABLE accessories         DISABLE ROW LEVEL SECURITY;
ALTER TABLE product_accessories DISABLE ROW LEVEL SECURITY;

-- 6. updated_at 자동 갱신 함수
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN NEW.updated_at = now(); RETURN NEW; END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS accessories_updated_at ON accessories;
CREATE TRIGGER accessories_updated_at
  BEFORE UPDATE ON accessories
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- 7. Realtime 활성화
ALTER PUBLICATION supabase_realtime ADD TABLE accessories;
ALTER PUBLICATION supabase_realtime ADD TABLE product_accessories;

-- 8. PostgREST schema cache 강제 리로드
NOTIFY pgrst, 'reload schema';
