create table if not exists products (
  id uuid primary key default gen_random_uuid(),
  brand text not null default '화이트샌즈',
  category text not null check (category in ('양산', '모자', '악세사리', '블랙샌즈')),
  product_code text not null unique,
  product_name text not null,
  image_url text,
  colors jsonb not null default '[]',
  required_materials jsonb not null default '["원단","메인라벨","케어라벨","행택","지퍼백"]',
  size text default 'ONE SIZE',
  created_at timestamptz default now()
);

create table if not exists orders (
  id uuid primary key default gen_random_uuid(),
  order_date date not null default current_date,
  category text not null,
  product_id uuid references products(id) on delete set null,
  product_code text not null,
  product_name text not null,
  image_url text,
  color_code text not null,
  color_name text not null,
  order_qty integer not null default 0,
  factory text not null,
  factory_payment_type text not null check (factory_payment_type in ('계약금선납', '바로생산')),
  contract_deposit_paid boolean default false,
  delivery_destination text not null check (delivery_destination in ('주희물류', '제이에스컴퍼니')),
  expected_delivery_date date,
  status text not null default '발주완료' check (status in ('발주완료', '계약금송금대기', '생산중', '입고완료')),
  materials jsonb not null default '{"원단":false,"메인라벨":false,"케어라벨":false,"행택":false,"지퍼백":false}',
  warehouse_qty integer default 0,
  memo text default '',
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

alter publication supabase_realtime add table orders;
alter publication supabase_realtime add table products;

create or replace function update_updated_at()
returns trigger as $$
begin new.updated_at = now(); return new; end;
$$ language plpgsql;

create trigger orders_updated_at before update on orders
  for each row execute function update_updated_at();
