# Claude Design 프롬프트: 첫 화면 프로토타입

아래 프롬프트를 Claude Design에 붙여 넣고, 결과를 `.semiclass/artifacts/prototype-spec.md`로 저장합니다.

입력으로는 Manyfast 산출물인 `.semiclass/artifacts/service-spec.md`를 사용합니다. 가능하면 바로 앞 단계의 `.semiclass/artifacts/design-system.md`도 함께 넣습니다.

```text
service-spec.md를 입력으로 받아서 "우리동네 공공데이터 생활정보 보드"의 첫 화면 프로토타입 명세를 만들고 싶어.

가능하면 design-system.md도 함께 참고해줘. design-system.md가 있다면 그 안의 색상 토큰, 버튼 규칙, 카드 규칙, 모바일 기본 규칙을 우선 사용해줘.

목표:
- service-spec.md의 사용자, 처음 흐름, 핵심 기능 3개, 데이터 구조가 화면에 반영되어야 해.
- 첫 화면만 만든다.
- 사용자가 들어오면 검색/필터를 보고, 생활정보 카드를 훑고, 관심 항목을 저장할 수 있어야 해.
- 모바일에서도 첫 화면의 우선순위가 명확해야 해.
- Claude Code가 이 명세를 보고 `app/page.tsx`와 CSS를 구현할 수 있어야 해.

결과는 prototype-spec.md 형태로 정리해줘.

아래 섹션 제목을 그대로 사용해줘.

## 입력 요약
## 첫 화면 목표
## 화면 구조
## 사용자 흐름
## 컴포넌트 목록
## 샘플 카드 데이터 구조
## 상태별 화면
## 모바일 프로토타입
## 접근성 체크
## Claude Code 구현 지시문
## 프로토타입 확인 체크리스트

화면 구조와 모바일 프로토타입은 텍스트 와이어프레임으로 작성해줘.

샘플 카드 데이터 구조에는 title, category, address, description, source_url, saved 상태가 포함되게 해줘.

Claude Code 구현 지시문은 "어떤 파일을 만들거나 수정할지", "어떤 컴포넌트가 필요한지", "첫 구현에서 어떤 상태를 화면 안에서 관리할지"까지 포함해줘.
```
