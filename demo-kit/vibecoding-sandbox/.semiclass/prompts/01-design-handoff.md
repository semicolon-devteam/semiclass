# Claude Code 프롬프트: Claude Design 핸드오프 이식

Claude Design에서 만든 핸드오프 URL을 Claude Code에 붙일 때 사용하는 프롬프트입니다.

`<DESIGN_HANDOFF_URL>`과 `<DESIGN_FILE_NAME>`만 실제 값으로 바꿔서 사용합니다.

```text
Fetch this design file, read its readme, and implement the relevant aspects of the design.
<DESIGN_HANDOFF_URL>

Implement: <DESIGN_FILE_NAME>

이 작업은 SemiClass 바이브코딩 클래스의 슬라이드 12 상태를 세팅하기 위한 디자인 룬 핸드오프다.

먼저 아래 파일을 읽고 구현 기준을 맞춰줘.
- .semiclass/global-demo-context.md
- .semiclass/artifacts/service-spec.md
- .semiclass/artifacts/design-system.md
- .semiclass/artifacts/prototype-spec.md

목표 상태:
- "우리동네 공공데이터 생활정보 보드"의 첫 화면이 Claude Design 결과와 같은 우선순위, 색상, 컴포넌트 질감으로 보인다.
- 첫 화면에는 검색/필터, 생활정보 카드 목록, 저장 버튼, 간단한 상세/상태 표현이 보인다.
- 이 단계는 디자인 룬 직후의 시연 상태다. 화면 설계와 스타일을 이식하되 아직 완성 서비스로 만들지 않는다.

의도적으로 남길 시련:
- 데이터는 아직 화면 코드 안 샘플 배열이어도 된다.
- public/sample-public-data.json은 만들지 않는다.
- Supabase, Auth, API route, Vercel 배포 설정, FCM은 추가하지 않는다.
- Tailwind 전면 전환은 모바일 망토 단계까지 남긴다.

수정 범위:
- app/page.tsx
- app/globals.css
- 필요한 경우 app/layout.tsx의 metadata 정도만 수정한다.

완료 후 아래를 보고해줘.
- 슬라이드 12 상태로 세팅되었는지
- 적용한 디자인 요소
- 의도적으로 남긴 시련
- 변경 파일
- 확인 명령
- 다음 스냅샷 이름: vibecoding-02-design-handoff
```
