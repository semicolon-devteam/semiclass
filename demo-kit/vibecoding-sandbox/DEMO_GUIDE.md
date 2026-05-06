# 시연 가이드

## 0. 준비

Claude Desktop에서 `Code` 탭을 열고 이 폴더를 선택합니다.

```text
/Users/reus/Desktop/Sources/semicolon/projects/semiclass/demos/vibecoding-sandbox
```

터미널에서 한 번만 설치합니다.

```bash
npm install
npm run dev
```

브라우저 또는 Claude Code preview에서 `http://localhost:3000`을 엽니다.

## 1. 시작 메시지

Claude Code 첫 메시지에는 `.semiclass/global-demo-context.md` 전체를 붙입니다.

확인해야 할 반응:
- Claude가 이 환경을 라이브 데모/리허설 샌드박스로 인식한다.
- 한 번에 모든 기능을 붙이지 않고 커리큘럼 순서를 따른다고 말한다.
- 각 단계 끝에 시련, 아티팩트, 변경 파일, 확인 명령, 다음 스냅샷을 보고하겠다고 한다.

## 2. 단계별 시연 체크

### 0-0 localhost 첫 화면

붙일 프롬프트: `.semiclass/prompts/00-hello-localhost.md`

의도:
- 학생들이 가장 궁금해할 “내 컴퓨터에서 웹사이트가 뜨는 순간”을 먼저 보여준다.
- Claude Code가 `app/page.tsx`를 수정하고, `npm run dev`로 `localhost:3000`에 화면을 띄우는 흐름을 보여준다.
- 아직 기획, 디자인, 데이터, DB는 시작하지 않는다.

확인:

```bash
npm run dev
```

브라우저 또는 Claude Code preview에서 `http://localhost:3000`을 열고 `"우리동네 공공데이터 생활정보 보드"` 문구가 보이는지 확인합니다.

스냅샷:

```bash
npm run snapshot -- vibecoding-00-hello-localhost
```

### 0-1 기획의 나침반

붙일 프롬프트: `.semiclass/prompts/00-spec.md`

의도된 결과:
- 바로 코드를 만들지 않고 질문을 먼저 한다.
- 답변 후 `service-spec.md`를 만든다.

샘플 답변:

```text
사용자는 강남/삼성 근처 직장인이고, 점심시간이나 퇴근 전에 주변 생활정보를 빠르게 찾고 싶어합니다.
처음 들어오면 검색하거나 카테고리를 고르고, 마음에 드는 항목을 저장합니다.
꼭 필요한 기능은 생활정보 카드 목록, 검색/필터, 관심 저장입니다.
나중 기능은 로그인, 실제 공공데이터 API, 푸시 알림입니다.
데이터는 title/category/address/description/source_url이 필요합니다.
저장할 데이터는 관심 항목과 메모입니다.
모바일에서는 카드 목록과 저장 버튼이 가장 중요합니다.
오늘 완성 기준은 로컬에서 카드 목록, 검색, 저장 버튼 흐름이 보이는 것입니다.
```

스냅샷:

```bash
npm run snapshot -- 01-service-spec
```

### 0-2 디자인 룬

붙일 프롬프트: `.semiclass/prompts/01-design.md`

의도된 결과:
- 디자인 토큰 또는 `design-rules.md`를 만든다.
- 구현보다 화면 기준과 컴포넌트 규칙을 정리한다.

스냅샷:

```bash
npm run snapshot -- 02-design-rules
```

### 1 첫 앱 생성

붙일 프롬프트: `.semiclass/prompts/02-first-app.md`

의도된 시련:
- 카드 화면은 생긴다.
- 샘플 데이터가 `app/page.tsx` 또는 화면 코드 안 배열로 들어간다.
- 저장 버튼은 눌리지만 새로고침하면 사라진다.
- `public/sample-public-data.json`, Supabase, Auth, API route, Tailwind, FCM은 생기지 않는다.

확인:

```bash
npm run dev
```

스냅샷:

```bash
npm run snapshot -- 03-static-board
```

### 2 데이터 크리스탈

붙일 프롬프트: `.semiclass/prompts/03-data-crystal.md`

의도된 해결:
- `public/sample-public-data.json`이 생긴다.
- `fetchPublicItems()`가 생긴다.
- 화면은 그대로인데 데이터 위치만 분리된다.

스냅샷:

```bash
npm run snapshot -- 04-data-crystal
```

### 3 DB 코어

붙일 프롬프트: `.semiclass/prompts/04-db-core.md`

의도된 해결:
- Supabase 클라이언트와 저장 로직이 생긴다.
- 저장 목록이 새로고침 후 복원되는 구조가 생긴다.
- Auth/RLS는 신원 인장 단계로 남는다.

스냅샷:

```bash
npm run snapshot -- 05-supabase-save
```

### 4 배포 부츠

붙일 프롬프트: `.semiclass/prompts/05-deploy-boots.md`

의도된 결과:
- Vercel env 체크리스트가 생긴다.
- `npm run build` 확인을 요청한다.
- 실제 배포가 길어지면 prepared URL 또는 스냅샷으로 이동한다.

스냅샷:

```bash
npm run snapshot -- 06-vercel-ready
```

### 5 신호의 검

붙일 프롬프트: `.semiclass/prompts/06-api-sword.md`

의도된 해결:
- 서버 route가 생긴다.
- env API key를 서버에서 읽는다.
- 외부 응답 adapter와 샘플 JSON fallback이 생긴다.

스냅샷:

```bash
npm run snapshot -- 07-api-route
```

### 6 신원 인장

붙일 프롬프트: `.semiclass/prompts/07-identity-seal.md`

의도된 해결:
- Supabase Auth UI 또는 magic link 흐름이 생긴다.
- `owner_id`와 RLS SQL이 정리된다.
- 내 저장 항목만 보는 구조가 생긴다.

스냅샷:

```bash
npm run snapshot -- 08-auth-rls
```

### 7 모바일 망토

붙일 프롬프트: `.semiclass/prompts/08-mobile-cloak.md`

의도된 해결:
- Tailwind 설정과 모바일 레이아웃 정리가 생긴다.
- FCM config, service worker, 알림 권한 버튼, mock send 경로가 생긴다.
- 실제 권한/실기기 이슈가 있으면 mock 또는 prepared snapshot으로 시연한다.

스냅샷:

```bash
npm run snapshot -- 09-mobile-fcm
```

## 3. 실패 시 복구

시연 중 길어지면 바로 스냅샷으로 이동합니다.

```bash
git reset --hard snapshots/03-static-board
git clean -fd
npm run dev
```

## 4. 리허설 판정 기준

- 첫 앱 생성 후 데이터가 코드 안에 남아 있어야 한다.
- 첫 앱 생성 후 저장 버튼은 새로고침하면 초기화되어야 한다.
- 데이터 크리스탈 후에는 화면이 그대로이고 데이터 소스만 분리되어야 한다.
- DB 코어 후에는 저장이 새로고침 후에도 남는 구조여야 한다.
- 모바일 망토 전까지 Tailwind 전면 전환과 FCM 파일이 생기면 안 된다.
