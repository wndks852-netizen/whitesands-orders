# White Sands 발주현황 관리 시스템

화이트샌즈 생산팀 발주 관리 웹 시스템

## 설치 및 실행

```bash
npm install
npm run dev
```

## Supabase 설정 (최초 1회)

1. [Supabase](https://supabase.com) 프로젝트에서 SQL Editor 열기
2. `supabase/schema.sql` 내용 전체 붙여넣기 → Run
3. Storage → New Bucket → 이름: `product-images` → **Public 체크** → 저장

## 관리자 비밀번호

기본값: `admin1234`  
변경: `lib/constants.ts`의 `ADMIN_PASSWORD` 수정

## 주요 기능

- 발주현황: 카드 형식, 카테고리/상태/검색 필터, 실시간 동기화
- 입고현황: 상품 검색 후 입고수량 직접 입력
- 관리자: 상품 등록/수정/삭제, 이미지 업로드, 발주 등록
- 납기 배너: 7일 이내 납기 자동 경고
- Realtime: Supabase 실시간 구독으로 모든 직원이 즉시 반영

## 실행 체크리스트

1. `npm install` — 의존성 설치
2. Supabase SQL Editor에서 `supabase/schema.sql` 실행
3. Supabase Storage에 `product-images` 버킷 생성 (Public)
4. `npm run dev` → http://localhost:3000 접속
5. 우측 상단 관리자 버튼 → 비밀번호 `admin1234`
6. 발주등록 탭 → '샘플 데이터 추가' 버튼으로 초기 데이터 삽입

## 🌐 Vercel 배포 방법

1. [vercel.com](https://vercel.com) 접속 → GitHub 계정으로 로그인
2. "New Project" → GitHub 레포지토리 선택 → Import
3. **Environment Variables** 섹션에서 아래 두 값 입력:
   - `NEXT_PUBLIC_SUPABASE_URL` = `https://sleltqxmusppbrxzetkr.supabase.co`
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY` = `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNsZWx0cXhtdXNwcGJyeHpldGtyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzY4Mjg0NzIsImV4cCI6MjA5MjQwNDQ3Mn0.UrFsuWY_nQI1BUQ-uDM1kwLfLiXgnPdGFrnRvvGuWo8`
4. "Deploy" 클릭
5. 배포 완료 후 `https://whitesands-orders.vercel.app` 형태의 링크 생성

> 이후 코드 수정 후 `git push` 하면 자동으로 재배포됩니다.
