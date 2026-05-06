-- brand, product_code, cost 컬럼 추가 (없으면)
ALTER TABLE accessories ADD COLUMN IF NOT EXISTS brand text DEFAULT '화이트샌즈';
ALTER TABLE accessories ADD COLUMN IF NOT EXISTS product_code text DEFAULT '';
ALTER TABLE accessories ADD COLUMN IF NOT EXISTS cost integer DEFAULT 0;

-- name 컬럼에 unique 제약 제거 (중복 이름 허용)
ALTER TABLE accessories DROP CONSTRAINT IF EXISTS accessories_name_key;
