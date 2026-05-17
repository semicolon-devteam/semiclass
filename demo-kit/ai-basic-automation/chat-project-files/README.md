# Chat Project [파일] 영역 자료 — 내 사령탑 자료실

이 폴더의 파일을 Claude **Chat → Projects → (Project) → [파일] 영역**에 올려두면, 단계 2~5에서 같은 Project의 모든 대화가 자료를 자동 참조합니다. 페르소나 지침(`00-project-지침.md`)부터 단계 1~3 산출물(체크리스트·캠페인 분석·검색 결과)까지 함께 들어 있어, **모드 전환·로컬 폴더 연결 없이** 결과물(단계 4)과 통합 대시보드(단계 5)까지 Artifact로 이어집니다. **무료 플랜 포함 전 플랜 동일.**

## 구성

```
chat-project-files/
├── 00-project-지침.md              ⭐ Project "지침(Instructions)" 박스에 붙여넣을 텍스트
├── README.md                       (사람용 안내 — 이 파일)
├── 00-내-프로필.md                  (페르소나 사람용 사본 — 지침과 일부 중복)
├── 01-quarter-checklist.md         (단계 1 산출물 — 분기 체크리스트)
├── 02-campaign-analysis.md         (단계 2 산출물 — 5월 캠페인 분석 + 개선 5종)
├── 02-spending-summary.md          (단계 2 옵션 — 카드·고지서 분석)
├── 03-search-results.md            (단계 3 산출물 — 청약·세금·연차 검색 결과)
├── 04-deliverable-brief.md         (단계 4 결과물 4종 명세)
└── 05-dashboard-spec.md            (단계 5 대시보드 명세 — 4 위젯 본편 / 6 보너스)
```

> Scheduled 자동 갱신 6작업은 본편에서 빠지고 `appendix-pro/scheduled-jobs.md`(Pro $20+ 부록)로 분리됐습니다.

## 세팅 (단계 0, 한 번만 · 2분)

1. `claude.ai` → 좌측 **Projects → + New project** → 이름 `세미클래스 — 김민지씨 점검판`
2. **`00-project-지침.md`** 의 내용을 Project **지침(Instructions) 박스**에 그대로 붙여넣기
   - 본인 케이스로 변주 시: 페르소나 첫 두 줄(직무·가구)만 본인으로
3. 나머지 `00-내-프로필 ~ 05-dashboard-spec` 파일을 Project **[파일] 영역**에 업로드
   - 한 번 올려두면 단계 2·3·4·5 대화가 매번 자동 참조 — 다시 첨부할 필요 없음

> **왜 지침 + [파일]?** Chat Project는 지침(톤·페르소나·정책)과 [파일] 영역(자료)을 그 Project의 모든 대화에 **자동 전파**합니다. 매번 "이 파일 참고해줘"라고 말하지 않아도 됩니다. (단, Artifact 산출물 자체는 자동 전파되지 않습니다 — 같은 대화를 이어가거나 다운로드본을 [파일]에 다시 올리세요.)

## 사용 흐름

### 단계 4 (결과물 만들기 · Chat Artifact)
> "[파일] 영역의 `02-campaign-analysis.md` 숫자로 5월 캠페인 인포그래픽 카드 1장을 Artifact로 만들어줘. `04-deliverable-brief.md` '1. 캠페인 인포그래픽' 명세를 따라."

같은 Project 대화에서 02·04 파일을 자동 참고해 우측 **Artifact 패널**에 띄웁니다. PDF·SNS 카드·PT도 같은 방식.

### 단계 5 (통합 대시보드 · Chat Artifact → 다운로드 → 로컬)
> "[파일] 영역의 `step5-dashboard-starter-localStorage.html`을 시작점으로, `05-dashboard-spec.md` 명세대로 4 위젯 점검판을 Artifact로 띄워줘."

만든 뒤 **Artifact `</> 코드` → 다운로드 → 바탕화면 `점검판.html` → 더블클릭**. 화면 안 sandbox와 달리 로컬에서 열면 localStorage가 작동해 입력·체크가 **매일 누적**됩니다 (무료). 코드가 끊기면 "마지막 줄부터 이어서 출력해줘"로 복구.

> 막혔을 때 안전망: `samples/step5-dashboard-starter-localStorage.html`을 그대로 다운로드 → 바탕화면 → 더블클릭하면 완성본이 이미 매일 누적 동작합니다.

## 부록 (Pro $20+ — 본편 아님)

매일 09:00 자동 갱신(뉴스 스크랩·KPI 반영·D-day)까지 원하면 **Cowork + Scheduled**(Pro 전용) — `appendix-pro/scheduled-jobs.md`의 6작업 참고. 본편(무료)은 다운로드→로컬 누적까지로 충분합니다.

## AI에게 한 줄 안내

> 사용자(33세 1인가구 마케터)의 단계 1~3 산출물과 단계 4·5 명세가 이 Project [파일] 영역에 모여 있습니다. "결과물 만들어줘"면 02·04를 참고해 Artifact로, "대시보드 만들어줘"면 01~05를 통합해 4 위젯(보너스 6) 화면을 Artifact 패널에 띄우고 다운로드→로컬 누적을 안내해 주세요.
