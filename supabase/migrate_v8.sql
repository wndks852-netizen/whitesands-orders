-- 상태 제약 조건에 입고 차수 추가
ALTER TABLE orders DROP CONSTRAINT IF EXISTS orders_status_check;
ALTER TABLE orders ADD CONSTRAINT orders_status_check
  CHECK (status IN (
    '발주완료', '계약금송금대기', '샘플중', '생산중',
    '화물출고', '1차입고', '2차입고', '3차입고', '4차입고', '입고완료'
  ));
