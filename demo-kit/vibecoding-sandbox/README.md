# SemiClass Vibecoding Sandbox

Claude Code Desktop 시연용 샌드박스 레포입니다.

## 목표

이 레포는 완성 앱이 아니라, 강의 중 일부러 시련을 만들고 아티팩트로 해결하는 과정을 보여주기 위한 시작점입니다.

## 사용 순서

1. Claude Desktop의 `Code` 탭에서 이 폴더를 엽니다.
2. `.semiclass/global-demo-context.md` 전체를 첫 메시지로 붙입니다.
3. `.semiclass/prompts/00-hello-localhost.md`로 localhost 첫 화면을 띄웁니다.
4. `.semiclass/prompts/00-spec.md`부터 단계별로 붙입니다.
5. 각 단계가 끝나면 `npm run snapshot -- <name>`으로 복구 지점을 만듭니다.

## 권장 스냅샷 이름

- `00-empty-starter`
- `00-hello-localhost`
- `01-service-spec`
- `02-design-rules`
- `03-static-board`
- `04-data-crystal`
- `05-supabase-save`
- `06-vercel-ready`
- `07-api-route`
- `08-auth-rls`
- `09-mobile-fcm`

## 로컬 실행

```bash
cd demo-kit/vibecoding-sandbox
npm install
npm run dev
```

## 리허설 리셋

```bash
git reset --hard snapshots/00-empty-starter
git clean -fd
```
