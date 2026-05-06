# SemiClass Vibecoding Sandbox

Claude Code Desktop 시연용 샌드박스 레포입니다.

## 목표

이 레포는 완성 앱이 아니라, 강의 중 일부러 시련을 만들고 아티팩트로 해결하는 과정을 보여주기 위한 시작점입니다.

## 사용 순서

1. Manyfast에 `.semiclass/tool-prompts/01-manyfast-service-spec.md`를 붙이고 `service-spec.md`를 만듭니다.
2. Claude Design에 `.semiclass/tool-prompts/02-claude-design-rules.md`를 붙이고 `design-rules.md`를 만듭니다.
3. 두 산출물을 `.semiclass/artifacts/`에 저장합니다.
4. Claude Desktop의 `Code` 탭에서 이 폴더를 엽니다.
5. `.semiclass/global-demo-context.md` 전체를 첫 메시지로 붙입니다.
6. `.semiclass/prompts/00-hello-localhost.md`로 localhost 첫 화면을 띄웁니다.
7. `.semiclass/prompts/02-first-app.md`부터 구현 단계로 들어갑니다.
8. 각 단계가 끝나면 `npm run snapshot -- <name>`으로 복구 지점을 만듭니다.

## 권장 스냅샷 이름

- `vibecoding-00-empty-starter`
- `vibecoding-00-hello-localhost`
- `vibecoding-01-artifacts-ready`
- `vibecoding-02-design-rules`
- `vibecoding-03-static-board`
- `vibecoding-04-data-crystal`
- `vibecoding-05-supabase-save`
- `vibecoding-06-vercel-ready`
- `vibecoding-07-api-route`
- `vibecoding-08-auth-rls`
- `vibecoding-09-mobile-fcm`

## 로컬 실행

```bash
cd demo-kit/vibecoding-sandbox
npm install
npm run dev
```

## 리허설 리셋

```bash
git reset --hard snapshots/vibecoding-00-empty-starter
git clean -fd
```
