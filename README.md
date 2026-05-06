# SemiClass

SemiClass 클래스 운영 자료와 데모킷을 모으는 팀 레포입니다.

## 구조

- `demo-kit/`: 클래스별 실습/시연 샌드박스
- `demo-kit/vibecoding-sandbox/`: 바이브코딩 클래스용 Claude Code Desktop 시연환경

## 바이브코딩 샌드박스 실행

```bash
cd demo-kit/vibecoding-sandbox
npm install
npm run dev -- --port 3100
```

Claude Desktop의 `Code` 탭에서 `demo-kit/vibecoding-sandbox` 폴더를 열고,
`.semiclass/global-demo-context.md`를 첫 메시지로 넣은 뒤 `.semiclass/prompts/`의
프롬프트를 순서대로 실행합니다.
