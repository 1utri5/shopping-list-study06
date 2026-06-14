# Shopping List (Supabase)

단일 파일(`index.html`) 쇼핑 리스트 웹앱입니다. 데이터는 [Supabase](https://supabase.com)에 저장됩니다.

## 기능
- 항목 추가 / 체크 / 삭제
- 남은 항목 카운터
- 완료 항목 일괄 삭제
- 새로고침 후에도 데이터 유지 (Supabase `shopping_items` 테이블)

## 실행
별도 빌드 없이 `index.html`을 브라우저로 열면 됩니다.

Supabase 연결 값은 `index.html` 상단의 `SUPABASE_URL` / `SUPABASE_KEY`에 설정되어 있습니다.
키는 클라이언트용 publishable 키이며, 테이블은 Row Level Security 정책으로 보호됩니다.

## 데이터베이스
스키마는 `supabase/migrations/0001_create_shopping_items.sql`에 정의되어 있습니다.

| 컬럼 | 타입 | 설명 |
|------|------|------|
| `id` | bigint (identity) | 기본키 |
| `text` | text | 항목 내용 |
| `checked` | boolean | 완료 여부 |
| `created_at` | timestamptz | 생성 시각 |
