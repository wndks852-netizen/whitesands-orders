-- RLS 비활성화 (내부 관리용 앱이므로 퍼블릭 접근 허용)
alter table products disable row level security;
alter table orders disable row level security;

-- 또는 RLS 유지하면서 정책 추가 (둘 중 하나만 실행)
-- alter table products enable row level security;
-- create policy "allow all" on products for all using (true) with check (true);
-- alter table orders enable row level security;
-- create policy "allow all" on orders for all using (true) with check (true);
