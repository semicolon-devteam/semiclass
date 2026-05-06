# 시연 가이드

## 0. 준비

Claude Desktop에서 `Code` 탭을 열고 이 폴더를 선택합니다.

```text
semiclass/demo-kit/vibecoding-sandbox
```

터미널에서 한 번만 설치합니다.

```bash
npm install
npm run dev
```

브라우저 또는 Claude Code preview에서 `http://localhost:3000`을 엽니다.

## 1. 기획/디자인 툴 산출물 만들기

첫 시작은 Code가 아니라 기획/디자인 툴입니다. 수강생에게 “코딩 전에 기준을 먼저 만든다”는 흐름을 보여줍니다.

### 1-1 기획의 나침반: Manyfast

사용 도구: `https://manyfast.io/`

붙일 프롬프트:

```text
.semiclass/tool-prompts/01-manyfast-service-spec.md
```

의도된 산출물:
- `service-spec.md`
- 사용자, 처음 흐름, 핵심 기능 3개, 데이터, 저장 정책, 모바일 핵심 화면, 오늘 완료 기준이 정리된다.
- Claude Code가 이어서 구현할 수 있는 체크리스트가 생긴다.

저장 위치:

```text
.semiclass/artifacts/service-spec.md
```

### 1-2 디자인 룬 A: 디자인 시스템

사용 도구: `https://claude.ai/design`

붙일 프롬프트:

```text
.semiclass/tool-prompts/02-claude-design-system.md
```

의도된 산출물:
- `design-system.md`
- 디자인 원칙, 색상 토큰, 타이포 토큰, 간격/라운드 토큰, 버튼/입력/카드/상세 패널 규칙이 정리된다.
- 아직 화면을 만들기보다 “어떤 규칙으로 화면을 만들지”가 정리된다.

저장 위치:

```text
.semiclass/artifacts/design-system.md
```

### 1-3 디자인 룬 B: 첫 화면 프로토타입

사용 도구: `https://claude.ai/design`

입력:

```text
.semiclass/artifacts/service-spec.md
.semiclass/artifacts/design-system.md
```

붙일 프롬프트:

```text
.semiclass/tool-prompts/03-claude-design-prototype.md
```

의도된 산출물:
- `prototype-spec.md`
- `service-spec.md`의 사용자, 핵심 기능, 데이터 구조가 첫 화면 와이어프레임으로 바뀐다.
- Claude Code가 `app/page.tsx`와 CSS를 구현할 때 참고할 화면 구조와 컴포넌트 목록이 생긴다.

저장 위치:

```text
.semiclass/artifacts/prototype-spec.md
```

리허설 팁:
- 시간 절약이 필요하면 미리 만든 산출물을 붙여 넣고 “이 파일을 기준으로 구현한다”고 설명합니다.
- 산출물 섹션 제목은 바꾸지 않습니다. 이후 Code 프롬프트가 고정 섹션을 참조하기 때문입니다.
- 프로토타입 프롬프트에는 반드시 `service-spec.md`를 함께 넣습니다.
- Claude Design 핸드오프 URL을 Code로 이식할 때는 `.semiclass/prompts/01-design-handoff.md`를 사용합니다. URL만 붙이면 데모 단계 제약을 잃을 수 있으므로, 슬라이드 12 상태와 의도적으로 남길 시련을 함께 명시합니다.

## 2. Claude Code 시작 메시지

Claude Code 첫 메시지에는 `.semiclass/global-demo-context.md` 전체를 붙입니다.

확인해야 할 반응:
- Claude가 이 환경을 라이브 데모/리허설 샌드박스로 인식한다.
- 한 번에 모든 기능을 붙이지 않고 커리큘럼 순서를 따른다고 말한다.
- 각 단계 끝에 시련, 아티팩트, 변경 파일, 확인 명령, 다음 스냅샷을 보고하겠다고 한다.

## 3. 단계별 시연 체크

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

### 0-1 기획/디자인 산출물 확인

붙일 프롬프트: 직접 입력

```text
.semiclass/artifacts/service-spec.md, .semiclass/artifacts/design-system.md, .semiclass/artifacts/prototype-spec.md를 읽고, 오늘 구현할 범위와 첫 화면 구현 기준을 짧게 요약해줘.
```

의도된 결과:
- Claude Code가 Manyfast/Claude Design 산출물을 읽는다.
- 첫 화면 구현 기준을 코드 작업 전에 요약한다.
- 산출물이 비어 있으면 `.semiclass/prompts/00-spec.md`와 `.semiclass/prompts/01-design.md`를 fallback으로 사용한다.

스냅샷:

```bash
npm run snapshot -- vibecoding-01-artifacts-ready
```

### 0-2 Claude Design 핸드오프 이식

붙일 프롬프트: `.semiclass/prompts/01-design-handoff.md`

의도:
- Claude Design 핸드오프 URL을 가져와 첫 화면 디자인을 이식한다.
- 슬라이드 12 상태처럼 디자인 룬 직후의 화면 기준을 만든다.
- 데이터 분리, Supabase, API, Auth, Tailwind 전면 전환, FCM은 이후 시련으로 남긴다.

예시:

```text
Fetch this design file, read its readme, and implement the relevant aspects of the design.
https://api.anthropic.com/v1/design/h/<id>?open_file=<file>

Implement: <file>
```

확인:

```bash
npm run dev
```

스냅샷:

```bash
npm run snapshot -- vibecoding-02-design-handoff
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
npm run snapshot -- vibecoding-03-static-board
```

### 2 데이터 크리스탈

붙일 프롬프트: `.semiclass/prompts/03-data-crystal.md`

의도된 해결:
- `public/sample-public-data.json`이 생긴다.
- `fetchPublicItems()`가 생긴다.
- 화면은 그대로인데 데이터 위치만 분리된다.

스냅샷:

```bash
npm run snapshot -- vibecoding-04-data-crystal
```

### 3 DB 코어

붙일 프롬프트: `.semiclass/prompts/04-db-core.md`

의도된 해결:
- Supabase 클라이언트와 저장 로직이 생긴다.
- 저장 목록이 새로고침 후 복원되는 구조가 생긴다.
- Auth/RLS는 신원 인장 단계로 남는다.

스냅샷:

```bash
npm run snapshot -- vibecoding-05-supabase-save
```

### 4 배포 부츠

붙일 프롬프트: `.semiclass/prompts/05-deploy-boots.md`

의도된 결과:
- Vercel env 체크리스트가 생긴다.
- `npm run build` 확인을 요청한다.
- 실제 배포가 길어지면 prepared URL 또는 스냅샷으로 이동한다.

스냅샷:

```bash
npm run snapshot -- vibecoding-06-vercel-ready
```

### 5 신호의 검

붙일 프롬프트: `.semiclass/prompts/06-api-sword.md`

의도된 해결:
- 서버 route가 생긴다.
- env API key를 서버에서 읽는다.
- 외부 응답 adapter와 샘플 JSON fallback이 생긴다.

스냅샷:

```bash
npm run snapshot -- vibecoding-07-api-route
```

### 6 신원 인장

붙일 프롬프트: `.semiclass/prompts/07-identity-seal.md`

의도된 해결:
- Supabase Auth UI 또는 magic link 흐름이 생긴다.
- `owner_id`와 RLS SQL이 정리된다.
- 내 저장 항목만 보는 구조가 생긴다.

스냅샷:

```bash
npm run snapshot -- vibecoding-08-auth-rls
```

### 7 모바일 망토

붙일 프롬프트: `.semiclass/prompts/08-mobile-cloak.md`

의도된 해결:
- Tailwind 설정과 모바일 레이아웃 정리가 생긴다.
- FCM config, service worker, 알림 권한 버튼, mock send 경로가 생긴다.
- 실제 권한/실기기 이슈가 있으면 mock 또는 prepared snapshot으로 시연한다.

스냅샷:

```bash
npm run snapshot -- vibecoding-09-mobile-fcm
```

## 4. 실패 시 복구

시연 중 길어지면 바로 스냅샷으로 이동합니다.

```bash
git reset --hard snapshots/vibecoding-00-empty-starter
git clean -fd
npm run dev
```

## 5. 리허설 판정 기준

- 첫 앱 생성 후 데이터가 코드 안에 남아 있어야 한다.
- 첫 앱 생성 후 저장 버튼은 새로고침하면 초기화되어야 한다.
- 데이터 크리스탈 후에는 화면이 그대로이고 데이터 소스만 분리되어야 한다.
- DB 코어 후에는 저장이 새로고침 후에도 남는 구조여야 한다.
- 모바일 망토 전까지 Tailwind 전면 전환과 FCM 파일이 생기면 안 된다.
