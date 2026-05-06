# Demo Kit

클래스별 시연/실습 샌드박스를 이 디렉토리에서 관리합니다. 새 데모는 독립 repo를 만들지 않고 `demo-kit/<demo-id>/` 하위에 추가합니다.

## Demo Index

| Demo ID | Class | Purpose | Runtime | Entry |
| --- | --- | --- | --- | --- |
| `vibecoding-sandbox` | 바이브코딩으로 내 서비스 만들기 | Claude Code Desktop으로 서비스 제작 루프를 시연 | Next.js | `demo-kit/vibecoding-sandbox` |

## Demo Kit Interface

각 데모킷은 아래 인터페이스를 맞춥니다.

```text
demo-kit/<demo-id>/
  README.md
  DEMO_GUIDE.md
  .semiclass/
    global-demo-context.md
    tool-prompts/
      01-*.md
      02-*.md
      03-*.md
    artifacts/
      README.md
    prompts/
      00-hello-localhost.md
      00-*.md
      01-*.md
  scripts/
    snapshot.sh
  package.json
```

필수 파일:

| File | Role |
| --- | --- |
| `README.md` | 설치, 실행, reset, snapshot 사용법 |
| `DEMO_GUIDE.md` | 강사가 실제로 따라 할 시연 절차와 판정 기준 |
| `.semiclass/global-demo-context.md` | Claude Code/Cowork 첫 메시지에 넣는 전역 시연 컨텍스트 |
| `.semiclass/tool-prompts/*.md` | Manyfast, Claude Design 등 외부 도구에 붙여 넣는 산출물 생성 프롬프트 |
| `.semiclass/artifacts/README.md` | 외부 도구 산출물 저장 위치와 기대 파일 계약 |
| `.semiclass/prompts/*.md` | 단계별 프롬프트. 수강생이 따라 쓸 수 있게 긍정 요청 중심으로 작성 |
| `scripts/snapshot.sh` | 단계 완료 후 Git tag 또는 commit snapshot을 만드는 스크립트 |
| `.env.example` | 외부 API, Supabase, Firebase 등 데모용 env 이름만 정리 |

## Prompt Contract

단계별 프롬프트는 시연 연출을 위해 부정 지시를 직접 넣지 않습니다.

권장:

```text
생활정보 보드를 모바일에서도 편하게 쓰고, 푸시 알림 데모까지 볼 수 있도록 다듬어줘.
```

비권장:

```text
DB는 붙이지 말고, API도 넣지 말고, Auth도 하지 마.
```

의도적으로 남겨둘 한계와 시련은 `global-demo-context.md`에서 관리합니다.

## Common Commands

각 데모킷 루트에서 실행합니다.

```bash
npm install
npm run dev
npm run build
npm run snapshot -- <snapshot-name>
```

처음 상태로 복구:

```bash
git reset --hard <snapshot-tag>
git clean -fd
```

## Snapshot Naming

tag 이름은 repo 전체에서 충돌하지 않게 `<demo-id>`를 포함합니다.

```text
snapshots/<demo-id>-00-empty-starter
snapshots/<demo-id>-00-hello-localhost
snapshots/<demo-id>-01-service-spec
snapshots/<demo-id>-02-design-system
snapshots/<demo-id>-02-prototype-spec
snapshots/<demo-id>-02-design-handoff
```

예:

```bash
npm run snapshot -- vibecoding-01-service-spec
git reset --hard snapshots/vibecoding-00-empty-starter
```

## Verification Checklist

새 데모를 추가하거나 수정한 뒤 최소 아래를 확인합니다.

```bash
npm install
npm run build
git status --short
```

데모가 웹앱이면 dev server도 확인합니다.

```bash
npm run dev -- --port 3100
curl -I http://localhost:3100
```

## Adding A New Demo

1. `demo-kit/<demo-id>/`를 만든다.
2. `README.md`, `DEMO_GUIDE.md`, `.semiclass/global-demo-context.md`, `.semiclass/prompts/`를 추가한다.
3. `scripts/snapshot.sh`를 추가한다.
4. 이 파일의 `Demo Index`에 한 줄을 추가한다.
5. 설치/빌드/초기 snapshot tag를 검증한다.
6. 변경을 `semicolon-devteam/semiclass`에 push한다.
