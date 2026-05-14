# SemiClass

SemiClass 클래스 운영 자료와 데모킷을 모으는 팀 레포입니다.

## 구조

- `demo-kit/`: 클래스별 실습/시연 샌드박스
- `demo-kit/vibecoding-sandbox/`: 바이브코딩 클래스용 Claude Code Desktop 시연환경
- `demo-kit/ai-basic-automation/`: **AI 기초편 (v4-lite)** 5단계 데모 팩 — 페르소나 김민지 시나리오, 프롬프트, 첨부 샘플 (CSV/MD/HTML), 사용법 `README.md` + `USAGE.pdf`

## AI 기초편 데모 팩 사용법

`demo-kit/ai-basic-automation/README.md`에 5단계 모든 프롬프트·첨부 가이드·치환표가 통합되어 있습니다. AI에게 통째 첨부해 "내 클래스 자료입니다"로 시작할 수 있습니다. 사람용 인쇄본은 `USAGE.pdf`. 강의 페이지: <https://semi-colon.space/lectures/semiclass-ai-basic-automation>

## 바이브코딩 샌드박스 실행

```bash
cd demo-kit/vibecoding-sandbox
npm install
npm run dev -- --port 3100
```

Claude Desktop의 `Code` 탭에서 `demo-kit/vibecoding-sandbox` 폴더를 열고,
`.semiclass/global-demo-context.md`를 첫 메시지로 넣은 뒤 `.semiclass/prompts/`의
프롬프트를 순서대로 실행합니다.
