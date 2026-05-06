# 프롬프트 5: 신호의 검

```text
샘플 JSON으로 동작하는 생활정보 보드를 실제 외부 API와 연결할 수 있는 구조로 바꿔줘.

요구사항:
- 준비된 env API key를 읽는 서버 route를 만들어줘.
- 외부 API 응답을 우리 앱의 PublicItem 타입으로 변환하는 adapter 함수를 만들어줘.
- API 실패 시 sample-public-data.json으로 fallback해줘.
- 응답 형태가 바뀌어도 화면 컴포넌트는 수정하지 않게 해줘.
- 데모용 env 이름, 로컬 확인 명령, Vercel env 체크 항목을 마지막에 정리해줘.
```
