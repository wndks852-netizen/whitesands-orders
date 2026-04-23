-- 1. orders 테이블의 status 체크 제약 조건 업데이트 (샘플중, 화물출고 추가)
ALTER TABLE orders DROP CONSTRAINT IF EXISTS orders_status_check;
ALTER TABLE orders ADD CONSTRAINT orders_status_check
  CHECK (status IN ('발주완료', '계약금송금대기', '샘플중', '생산중', '화물출고', '입고완료'));

-- 확인
SELECT 'status constraint updated successfully' as result;
