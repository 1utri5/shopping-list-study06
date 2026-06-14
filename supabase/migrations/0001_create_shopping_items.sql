-- shopping_items 테이블 생성
create table if not exists public.shopping_items (
  id          bigint generated always as identity primary key,
  text        text    not null,
  checked     boolean not null default false,
  created_at  timestamptz not null default now()
);

-- Row Level Security 활성화
alter table public.shopping_items enable row level security;

-- 인증 없는 데모 앱: anon 키로 읽기/쓰기 허용
-- (실서비스라면 사용자별 auth + 소유자 기반 정책으로 교체하세요.)
create policy "Public read"   on public.shopping_items for select using (true);
create policy "Public insert" on public.shopping_items for insert with check (true);
create policy "Public update" on public.shopping_items for update using (true) with check (true);
create policy "Public delete" on public.shopping_items for delete using (true);
