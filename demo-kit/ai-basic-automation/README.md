---
title: "AI 쉽고 재밌게 활용하기: 기초편 — 데모 팩"
author: "SemiClass"
date: "2026-05-14"
---

# AI 쉽고 재밌게 활용하기: 기초편 — 데모 팩 (v4-lite, 직장인 마케터 한정)

> 30대 직장인 마케터 김민지씨의 5월 시나리오로 5단계를 따라가며 마지막에 HTML 한 페이지 "마케터 점검판" 대시보드를 만드는 데모 팩.
>
> **대상**: 30대 직장인 한정. 자영업·주부·학생은 다른 클래스에서 다룹니다.
> **본인 변주**: 직무(영업/개발/기획/HR)·연차·가족구성만 본인에 맞게 1줄 변주. 시나리오 골격은 김민지씨 그대로.

이 문서는 두 가지 용도로 작성됐습니다.
- **AI가 읽는 마스터**: `README.md` (본 파일). Claude에게 통째 첨부해 "내 클래스 자료입니다"로 시작
- **사람이 보는 사본**: `USAGE.pdf` — 인쇄·휴대용

---

## 데모 팩 구성

```
demo-pack/
├── README.md                                       (AI/사람 마스터 사용법)
├── USAGE.pdf                                       (사람 인쇄용 사본, README.md 변환)
└── samples/
    ├── step2-card-statement.csv                    (실습 2 생활 변주 — 마케터 5월 카드 사용 95건)
    ├── step2-campaign-report.md                    (실습 2 메인 — 5월 캠페인 결과 보고서)
    ├── step2-utility-bill.md                       (실습 2 옵션 — 1인 가구 전기·가스 고지서)
    ├── step3-search-targets.md                     (실습 3 검색·자동 발송 시나리오 — 청약·세금·휴가·트렌드)
    ├── step4-deliverable-brief.md                  (실습 4 결과물 4종 가이드 — 인포그래픽·PDF·SNS·PT)
    ├── step5-dashboard-starter.html                (실습 5 시작점 — 마케터 점검판 6 위젯)
    └── step5-dashboard-starter-localStorage.html   (Bonus 2 — KPI 입력·SNS 상태·투두 누적 저장)
```

---

## 페르소나 — 김민지씨 (오늘의 메인 시나리오)

- 1992년생 **마케터** (중견기업 8년차, 33세)
- 서울 마포구 1인 가구. 월세 80 / 관리 12 / 전기·가스 5 / 건보 18 / 적금 30 + 구독 6종
- 매주 캠페인 기획·SNS 콘텐츠 운영·고객 답장·주간 보고서·회의록
- 캠페인 KPI 매번 흩어짐 / 청약·세금 매번 검색 / 회의록 부담 / 월급 새는 곳
- 욕구: "캠페인·고객·생활이 한 화면에 모이는 **마케터 점검판**"

### 본인 변주 안내 (직장인 한정)

- 직무: 마케터(=김민지씨) / 영업 / 개발 / 기획 / HR / 기타
- 연차: 1~3년 / 4~7년 / 8년+
- 가족구성: 1인가구 / 부부 / 유자녀

→ **시나리오 골격은 김민지씨를 그대로 따라옵니다.** 본인이 김민지씨와 가장 다른 업무 1줄만 단계 1·2 변주에 적용.

### 단계별 비중

| 단계 | 비중 | 시나리오 |
|------|------|---------|
| 1 말 걸어보기 | **생활** | 1인가구 직장인 분기 체크리스트 (청약·세금·휴가·건강검진) |
| 2 사진·파일 같이 | **업무** | 5월 마케팅 캠페인 결과 보고서 분석 + 카드 사용 내역(옵션 생활) |
| 3 도구 사용하기 | **생활** | 청약·세금·연차·세미나 검색 + Tasks 자동 발송 시연 |
| 4 결과물 만들기 | **업무** | 캠페인 인포그래픽 1장(대표) + PDF·SNS·PT 30초 메뉴 시연 |
| 5 대시보드 만들기 ⭐ | **업무+생활 통합** | 마케터 점검판 — 캠페인·SNS·KPI + 고정지출·루틴·캘린더 |

---

## 단계 0 — Claude Project 세팅 (5분, 한 번만)

오늘 전체를 담을 그릇입니다. 지침(페르소나·말투)을 한 번 적어두면 모든 대화에 자동 적용되고, 파일은 [파일] 탭에 차곡차곡 쌓아두면 단계 2·3·4가 모두 같은 자료를 자동 참고합니다. 단계 4부터는 같은 Project를 그대로 Cowork 모드로 데려갑니다.

### 0-1. Project 만들기 (Chat 모드)

1. `claude.ai` 접속 → 좌측 사이드바 **Projects** → **+ New project**
2. 이름: `세미클래스 — 김민지씨 점검판` (본인 직무로 변주 시 직무명 추가)
3. 설명(선택): `AI 쉽고 재밌게 활용하기 — 기초편 데모`

### 0-2. 지침 입력 (Custom Instructions)

Project 우측 "지침(Instructions)" 박스에 아래 템플릿을 그대로 붙여 넣습니다. **본인 변주는 첫 줄만 바꾸면 됩니다.**

```text
나는 1992년생 마케터, 중견기업 8년차.    ← (본인 직무·연차로 변주)
서울 마포 1인가구, 고양이 치즈 한 마리.   ← (본인 가구로 변주)
청약·적금·CMA 관리 중, 청년 우대형 가입 아직.
헬스장 두 달째 안 감, 작년 콜레스테롤 살짝 높음.
업무: 캠페인 기획·SNS·고객 답장·주간 보고서.

답변은 늘 한국어 친근체로,
숫자 출처가 없으면 "추정" 표시,
민감정보는 가명·둥근 숫자로 바꿔서.
```

### 0-3. 파일 [파일] 탭에 미리 올려두기

Project [파일] 탭에 데모 팩 `samples/`의 다음 파일을 미리 업로드해두면, 실습 2·3·4 대화가 자동으로 같은 자료를 참고합니다 — **매 대화마다 다시 첨부할 필요 없음.**

| 단계 | 파일 | 비고 |
|------|------|------|
| 실습 2 | `samples/step2-campaign-report.md` | 메인 분석 자료 |
| 실습 2 옵션 | `samples/step2-card-statement.csv` | 생활 변주 (선택) |
| 실습 2 옵션 | `samples/step2-utility-bill.md` | 1인가구 옵션 (선택) |
| 실습 3 | `samples/step3-search-targets.md` | 검색 시나리오 5종 |
| 실습 4 | `samples/step4-deliverable-brief.md` | 결과물 4종 가이드 |

> **본인 자료 변주**: 영업 실적표·개발 릴리즈·기획안·HR KPI 등 본인 직무 자료가 있다면 [파일] 탭에 같이 올려두세요. 민감정보는 미리 가명·둥근 숫자로.

### 0-4. 세팅 완료 확인

새 대화창에 `"내가 누군지 한 줄로 요약해줘"`만 보내보면 됩니다. 지침이 받쳐주는지 1초 만에 확인 가능.

### 0-5. 강사 운영 노트 — 학생 실패 모드 두 가지

| 실패 | 증상 | 대응 |
|------|------|------|
| **지침 입력 빼먹기** | 0-4 확인 응답이 마케터 페르소나 톤이 아니라 일반 답변 ("저는 AI 어시스턴트입니다…") | 실습 1 들어가기 전 보조강사가 1:1로 지침 박스 다시 확인 |
| **[파일] 탭 비워두기** | 실습 2 프롬프트를 보내도 AI가 "첨부된 파일이 없습니다"라고 답함 | Project 사이드바 [파일] 탭에서 `step2-campaign-report.md` 업로드 안내, 본인 자료 변주 학생은 본인 파일도 같이 |

> 두 케이스 모두 실습 1 시작 직후 강사가 "지침 확인 한 번씩 같이 해볼게요" 30초 시연으로 일괄 점검하면 가장 효율적.

> **요금제**: 무료 플랜으로 단계 1~5 본편 모두 진행 가능합니다. Pro $20/월은 실습 5의 **Live Artifacts**(새로고침 뒤에도 데이터 유지)와 응답 속도가 필요한 분에게 권장.

---

## 실습 1 — 말 걸어보기 (생활 · 분기 체크리스트)

**도구**: 단계 0에서 만든 Claude Project (Chat 모드). 지침이 페르소나를 받쳐주니 본문은 짧아도 충분합니다.

**프롬프트 1-1 (김민지씨 그대로 시작)**

```text
나는 1992년생 마케터고 서울 마포에서 혼자 살아.
이번 분기에 챙겨야 할 생활 일들을 카테고리(돈·서류·건강·휴식)로 나눠서
체크리스트로 정리해줘. 각 카테고리 5개 이내, 1인가구 직장인 현실에 맞게.
```

**프롬프트 1-2 (재질문 — 실행 가능성)**

```text
좋아. 각 항목 옆에 다음 2개를 추가해줘.
1) 이번 주 시작할 수 있는 "첫 행동" 한 줄
2) 예상 소요시간 (5분 / 30분 / 1시간 이상)
표 형태로. 애매한 건 "사람 검토 필요" 표시.
```

**프롬프트 1-3 (본인 변주 — 지침 한 줄만 바꾸기)**

본인 직무·연차·가족구성이 김민지씨와 다르면 **Project 지침 첫 줄만 수정**한 뒤 새 대화에서 그대로 다시 받아보세요. 본문에 다시 적을 필요 없습니다.

```text
방금 만든 체크리스트를 Project 지침에 맞게 1~2개만 다듬어 줘.
나머지는 그대로.
```

> 단계 1은 생활(분기 챙길거리)만. 최신 일정·청약 공고는 단계 3에서.

---

## 실습 2 — 사진·파일 같이 보내기 (업무 · 캠페인 결과 + 생활 옵션)

**도구**: 같은 Project (Chat 모드). 단계 0에서 [파일] 탭에 올려둔 자료를 자동 참고합니다 — 매 대화마다 다시 첨부할 필요 없음.

### 2-1. 메인 — 마케팅 캠페인 결과 분석 (김민지씨 그대로)

자료: Project [파일] 탭의 `step2-campaign-report.md`

**프롬프트 2-1**

```text
Project [파일] 탭의 step2-campaign-report.md를 보고,
이 캠페인의 핵심 KPI 3개를 짚어줘 (CTR·CPC·전환율 등).
다음 캠페인에서 개선할 포인트 5개를 다음 표로 정리해줘.

| 개선 포인트 | 실행 난이도 | 예상 효과 | 첫 액션 (이번 주) |
|------------|------------|----------|-------------------|

난이도: 쉬움/중간/높음, 효과: 상/중/하. 출처 데이터가 없으면 "추정".
```

**프롬프트 2-2 (재질문 — 임원 보고 톤)**

```text
이 분석을 임원진에게 보고할 3줄 요약으로 압축해줘.
숫자 1개, 인사이트 1개, 다음 액션 1개. 존댓말.
```

### 2-2. 본인 직무로 변주 (옵션)

본인이 가져온 자료(영업 실적표 / 개발 릴리즈 / 기획안 / HR KPI 등)를 **Project [파일] 탭에 추가**한 뒤:

```text
방금 추가한 내 [직무] 자료(파일명 그대로 적기)로 같은 패턴 분석해줘.
1) 핵심 지표 3개 짚기
2) 개선 포인트 5개 "난이도·효과·첫 액션" 표
3) 임원 보고용 3줄 요약
```

### 2-3. 생활 변주 (옵션) — 카드 사용 내역

자료: Project [파일] 탭의 `step2-card-statement.csv` (마케터 김민지씨 5월 카드 사용 95건)

```text
Project [파일] 탭의 step2-card-statement.csv 보고,
1) 카테고리별 합계와 상위 3개
2) 이상치 거래 (평소보다 큰 지출) 1~3건
3) 다음 달 줄이면 좋을 항목 3개 + 줄이는 방법 1줄
```

비교 한 줄 공유: 업무 데이터 vs 생활 데이터 중 어느 분석이 본인에게 더 와닿았는가?

---

## 실습 3 — 도구 사용하기 (생활 · 검색 + 자동 발송)

**도구**: 같은 Project (Chat 모드). 지침과 [파일] 탭이 그대로 — 본문은 짧아도 충분합니다.

### 3-1. 웹 검색 (학생 직접)

**도구·켜는 법**
- Claude: 답변 중 자동 웹 검색이 켜집니다. "최신 정보 검색해줘"라고 명시해도 좋아요.
- 본편은 Claude 하나로 진행합니다 (평소 다른 도구도 비슷한 방식).

**프롬프트 3-1 (시나리오 골라 쓰기)**

자료: Project [파일] 탭의 `step3-search-targets.md` 5종 중 1~2개 골라 검색.

```text
Project [파일] 탭의 step3-search-targets.md에서 "[항목]"을
골라, 최신 정보를 검색해서 알려줘.

- 출처 URL 1개 이상
- 마감일이 있으면 D-day 표시
- 확실하지 않으면 "확인 필요"
- 5줄 이내 요약
- 본인 캘린더에 옮길 수 있게 [제목·날짜·장소·준비물 한 줄] 형식 첨부
```

골라 쓰는 항목:
1. 이번 주 청년 무주택자 청약 신규 공고
2. 이번 분기 종합소득세 신고 마감 + 직장인 환급
3. 다음 분기 연차 사용 기한 + 잔여 연차 소진 권고
4. 5월 직장인 무료 건강검진 대상자 + 신청 방법
5. 이번 달 마케팅·디자인 직무 무료/저가 세미나

### 3-2. 스케쥴 / Tasks (강사 시연 위주)

오늘 본편은 Claude의 자동 웹 검색까지. 매일 자동 발송은 후속 클래스 "에이전틱 AI × 기초"에서. 참고용 예시 프롬프트:

```text
매일 아침 9시에 보내줘.
1) 코스피·코스닥 헤드라인 5개 (출처 포함)
2) 직장인 마케터 트렌드 헤드라인 3개
3) 어제 발표된 AI 도구 1개 (한 줄 요약)
```

```text
매주 금요일 오후 5시.
- 이번 주 청년 무주택자 청약 신규 공고 1개 (D-day)
- 다음 주 직장인 직무 세미나 무료 1개
- 다음 주 챙길 마감 1개 (연차·세금·건강검진 중)
```

> 무료 사용자는 강사 시연만. 단계 5 대시보드에서 "오늘의 정보" 위젯으로 비슷한 효과.

---

## 실습 4 진입 전 — Cowork 모드로 전환 (1분)

여기서부터 결과물(인포그래픽·PDF·SNS 카드·대시보드)을 만들 거라, **Chat 모드를 Cowork 모드로 바꿉니다**. 결과물 패널이 우측에 고정돼서 옆에서 바로 미리보기·수정할 수 있어요.

### 전환 절차 (30초)

1. Claude.ai 좌측 사이드바에서 **단계 0에서 만든 Project**를 그대로 열어둡니다
2. 그 Project 안에서 **새 대화**를 시작하고, 메시지 박스 상단의 **Cowork 아이콘**으로 모드를 전환
3. 같은 Project이므로 지침·[파일] 탭은 그대로 — 다시 첨부 안 해도 됩니다

> Claude.ai UI 워딩은 시즌별로 살짝 다를 수 있어요. "Project 안에서 새 대화 → 모드만 Cowork으로" 정도만 기억하시면 충분합니다.

### 전환 후 첫 메시지 (강사 시연)

```text
방금 단계 2에서 분석한 5월 캠페인 결과를 바탕으로,
이번에는 결과물을 만들 거야.

먼저 정사각형 인포그래픽 카드 1장을
우측 결과물 패널(HTML/SVG)에 띄워줘.
Project [파일] 탭의 step2-campaign-report.md 숫자 그대로 써.
```

### 영속성 옵션 (요금제별)

- **무료 플랜**: 본편 결과물 생성·수정·캡처까지 그대로 가능. 단, 새 세션을 시작하면 패널의 데이터는 사라짐.
- **Pro 이상 + Live Artifacts ON**: 새로고침/내일 다시 열기 뒤에도 결과물 패널의 입력·상태가 남음. 실습 5 대시보드를 매일 누적해서 쓰실 분께 권장.

---

## 실습 4 — 결과물 만들기 (업무 · 마케터 결과물 4종)

자료: Project [파일] 탭의 `step4-deliverable-brief.md` — 4종 시나리오·프롬프트·검증 체크리스트 통합본.

### 4-0. 보너스 — 페르소나 소개 이미지 만들기

수업 슬라이드나 본인 자료에 넣을 "김민지씨의 책상" 이미지가 필요할 때 사용. 본편 필수 실습은 아니고, 이미지 생성 프롬프트 구조 예시로 봐도 됩니다.

```text
16:9 wide polished digital illustration for a dark navy presentation slide. A Korean woman office worker in her early 30s, clearly feminine silhouette, shoulder-length dark hair or low ponytail, soft blouse or cardigan, seated at a home office desk in late evening Seoul. Show her from a gentle rear three-quarter angle, not full face, with relaxed focused posture.

The composition should fill the whole frame, with meaningful objects across the left and center: laptop with abstract marketing dashboard charts, printed campaign report with charts, SNS content calendar notebook, sticky notes, smartphone with unread message bubbles, coffee cup, small desk lamp, wall calendar, and a few organized documents. Avoid a large empty dark area on the left; place papers, notes, calendar, lamp glow, or desk objects there.

Modern Korean marketer workspace, calm late-night work mood, dark navy background with soft blue accent lighting, professional SaaS-style illustration, clean and realistic but slightly stylized. No readable text, no logos, no brand names, no distorted hands, no masculine suit silhouette, no empty left half, no cluttered mess.
```

### 4-1. 대표 실습 — 캠페인 인포그래픽 1장 (모두 시도)

**도구**: Cowork 결과물 패널 (HTML/SVG 카드). 사진톤이 필요하면 외부 이미지 생성 도구 별도.

**프롬프트 4-1 (임원 보고 톤)**

```text
다음 5월 마케팅 캠페인 결과로 정사각형 인포그래픽 카드 1장 그려줘.

데이터 (가상, 라운드 숫자):
- 캠페인: "Hello May" 봄 신상 런칭
- 노출 230만 / 클릭 4.9만 / CTR 2.1%
- 전환 1,400 / ROAS 4.3x / 매출 5,160만원 (목표 대비 +14.7%)

스타일:
- 다크 톤(#1D242B) + 블루(#068FFF)·옐로우(#FFD166) 액센트
- 친근하지만 정돈된 임원 보고용
- 헤더 "Hello May 회고 · 2026-05"
- 핵심 숫자 3개 큰 폰트
- 인사이트 1줄, 다음 액션 1줄
- 우측 하단 워터마크 "Marketing Team"
```

**프롬프트 4-2 (재질문 — 동료 공유 톤)**

```text
같은 데이터로 1장 더 만들어줘. 이번엔:
- 일러스트 느낌, 친근한 톤, 이모지 3개
- "수고했어요!" 메시지 1줄
- 동료한테 슬랙에 공유할 톤
```

캡처 → 옆사람에게 보여주기 → 둘 중 마음에 드는 거 1장 메모.

### 4-2. 강사 메뉴 시연 (각 30초)

| 형식 | 도구 | 사용 시점 |
|------|------|----------|
| **주간 보고서 PDF** | Cowork 결과물 패널 → 다운로드 | 매주 금요일 캠페인·콘텐츠·CS 통합 보고 |
| **SNS 콘텐츠 카드 3장** | Cowork 결과물 패널 (HTML 카드 시리즈) | 캠페인 런칭/중간/마감 공지 |
| **회의록 요약 PT** | Cowork → Marp 슬라이드 | 회의 직후 결과 보고 |
| **1분 영상 시나리오** | 텍스트 시나리오 + 자막 | 짧은 캠페인 티저 |

본인이 흥미 있는 형식 1개 메모. 시간 남으면 시도 (자세한 프롬프트는 `step4-deliverable-brief.md`).

---

## 실습 5 — 나만의 대시보드 만들기 ⭐ (업무+생활 통합)

### 5-1. 도구 선택

| 옵션 | 가입 도구 | 진입 | 영속성 |
|------|---------|------|--------|
| **Primary** — Cowork 결과물 패널 (실습 4에서 이미 전환됨) | claude.ai | 우측 패널 즉시 렌더 | ❌ 새 세션 시 사라짐 |
| **Primary+** — Cowork + **Live Artifacts ON** | Claude Pro 이상 | 동일 진입 | ✅ 새로고침 뒤에도 유지 |
| **Bonus 1** — 로컬 `dashboard.html` + localStorage | (희망자) | 더블클릭 실행 | ✅ 브라우저 누적 |
| Bonus 3 — Claude Code / Cursor / VS Code | (희망자) | 보조강사 1:1, localhost | ✅ 파일 직접 수정 |
| (후속) Supabase MCP / Vercel | 본편 X | 후속 클래스 예고 | ✅ 클라우드 |

### 5-2. 프롬프트 5 — 마케터 점검판 (6 위젯)

```text
30대 직장인 마케터의 5월 점검판 대시보드를 HTML 한 페이지로 만들어줘.
Claude의 우측 Artifact 패널에서 바로 보이게.

상단 헤더: "김민지씨의 5월 점검판" + 부제 "캠페인 · KPI · 생활 통합"

[업무 영역 — 좌측·중앙]

위젯 1 (좌측 상단) — 캠페인 진행 상황 (3개)
- 봄 신상 런칭 "Hello May" / RUN / D-7
- 충성고객 리텐션 메일 / RUN / D+5
- 인플루언서 협업 (여름) / PLAN / D-14
각 행: [캠페인명·상태·D-day]

위젯 2 (중앙 상단) — SNS 콘텐츠 캘린더 (이번 주 월~금)
5개 행: 월~금, 각 [날짜·플랫폼·콘텐츠 제목·상태(초안/검수/발행)]
- 5/13(월) 인스타 카드뉴스 "여름 룩북" / 발행완료
- 5/14(화) 블로그 "캠페인 비하인드" / 검수
- 5/15(수) 인스타 릴스 "고객 후기" / 초안
- 5/16(목) 카카오 채널 "이번 주 혜택" / 초안
- 5/17(금) 유튜브 쇼츠 "팀 인터뷰" / 미작성

위젯 3 (우측 상단) — KPI 트래커 (진행 바)
- CTR: 목표 2.5% / 현재 2.1% (84%)
- CPC: 목표 ≤1,200원 / 현재 1,350원 (-12%)
- 전환율: 목표 3.0% / 현재 3.4% (113%)
- ROAS: 목표 3.75x / 현재 4.3x (115%)

[생활 영역 — 하단]

위젯 4 (좌측 하단) — 고정 지출 표
월세 80만(1일) / 관리비 12만(5일) / 전기·가스 5만(10일) / 건보 18만(10일) / 넷플릭스 1.7만(12일) / 적금 30만(25일)

위젯 5 (중앙 하단) — 오늘의 루틴 투두 (체크박스 5개)
- 회의록 정리 (캠페인 킥오프)
- 고객 답장 5건 (CS 인박스)
- 주간 보고서 초안
- SNS 릴스 초안 (수요일)
- 운동 30분

위젯 6 (우측 하단) — 통합 캘린더 미니뷰
5월 7×5 그리드. 다음 표시:
- 노란 점 = 고정 지출 결제일 (1·5·10·12·25)
- 파란 점 = 캠페인 마감일 (5/20 봄 런칭, 5/28 인플루언서)
- 초록 점 = 적금/회식

톤: 다크(#1D242B) + 블루 글로우(#068FFF), 카드 #252E37, 옐로우 #FFD166, 그린 #69DB7C.
Pretendard 또는 시스템 sans-serif. 데이터 하드코딩 OK.
```

### 5-3. 시작점 (자료실 starter 2종)

- **기본**: `samples/step5-dashboard-starter.html` — 6 위젯 최소 골격
- **Bonus 2 (localStorage)**: `samples/step5-dashboard-starter-localStorage.html` — KPI 입력·캠페인 상태·SNS 상태·투두를 브라우저에 누적 저장 + 초기화 버튼

### 5-4. 완료 기준 (현실적)

- ☐ 화면에 대시보드 1페이지 표시 (위젯 6개 중 4개 이상 보이면 성공)
- ☐ 투두 체크박스 1개 이상 클릭 → 시각 반응 동작
- ☐ 캡처 1장 (다운로드 또는 화면 캡처)
- ☐ (Bonus) KPI 진행 바·캠페인 D-day 자동 계산 동작

옆사람에게 30초 보여주기. 본인 직무 변주가 들어갔다면 어디가 바뀌었는지 1줄 공유.

---

## 미완성 백업 — 손글씨 마케터 점검판

화면 생성이 어렵다면 본인 마케터 점검판 구성 요소 5개 + 우선순위 손글씨로 작성. 완료 인정.

1. 가장 중요한 위젯: __________________
2. 그 다음: __________________
3. 그 다음: __________________
4. 그 다음: __________________
5. 마지막: __________________

---

## 사람 검토 체크리스트

AI 결과를 그대로 믿지 말고:

- [ ] 실제 마감·금액·KPI 숫자가 맞는가?
- [ ] 검색 결과의 출처는 신뢰할 만한가?
- [ ] 민감 정보(고객명·실제 KPI·계좌)가 들어가 있지 않은가?
- [ ] AI가 사실을 지어내지 않았는가?
- [ ] 외부 발송·임원 보고 전 내가 검토하는가?

---

## 영속성 옵션 — Cowork 무료는 "체험", Live Artifacts는 "누적"

> Cowork 결과물 패널의 무료 세션은 새 세션을 시작하면 데이터가 사라집니다 (sandbox CSP로 localStorage·외부 fetch 차단).
> 매일 누적해서 쓰고 싶으면 **Pro 이상 + Live Artifacts ON**(가장 추천) 또는 아래 Bonus 1·2 / 후속 클래스로 가세요.

| 옵션 | 영속성 | 학생 조건 | 본편 적합 |
|------|--------|----------|----------|
| Cowork 결과물 패널 (무료, Live Artifacts OFF) | ❌ 새 세션 시 사라짐 | — | 본편 진입 |
| **Cowork + Live Artifacts ON** | ✅ 새로고침/다음날에도 유지 | Claude Pro/Max/Team/Enterprise | **본편 권장** |
| **Bonus 1 — 로컬 dashboard.html + localStorage** | ✅ 브라우저 누적 | 코드 저장 + 더블클릭 실행 | 희망자 1:1 |
| Bonus 2 — Claude Code / Cursor / VS Code (localhost) | ✅ 파일 직접 수정 | IDE 사용 경험 | 희망자 1:1 |
| (후속) Supabase MCP Connector | ✅ 클라우드 DB | Claude 유료 + Supabase + MCP | **에이전틱 AI × 기초** |
| (후속) Vercel + Supabase 풀스택 | ✅ 클라우드 + URL 공유 | 본인 노트북 + Git | **바이브코딩 × 기초** ⭐ |

### Cowork + Live Artifacts 사용법 (Claude Pro 학생)

1. 실습 4에서 이미 Cowork 모드로 전환 완료 (위 "실습 4 진입 전" 참고)
2. 결과물 생성 시 **"Live Artifact" 토글 ON** (우측 패널 상단)
3. KPI 누적 / 매일 SNS 상태 갱신 같은 위젯 요청
4. 같은 Project를 다음 날 다시 열어도 결과물 패널의 데이터 유지 (공유 미지원, 본인 워크스페이스 전용)

### Bonus 1 사용법 (희망자 — 자료실 starter 제공)

1. `samples/step5-dashboard-starter-localStorage.html` 다운로드 → 더블클릭 → KPI 입력·캠페인 상태·SNS 상태·투두 누적 동작 확인
2. Cowork 결과물 패널로 본인 변주본을 만들고 싶으면 확장 프롬프트(아래) 사용
3. 결과를 본인 PC `dashboard.html`로 저장 → 더블클릭 → 입력·체크가 누적

**확장 프롬프트** (Cowork이 만든 본인 대시보드 코드에 추가):

```text
방금 만든 대시보드 코드에 localStorage 저장을 추가해줘.
- KPI 실적 input → key별 localStorage.setItem
- 캠페인 상태 / SNS 콘텐츠 상태 (PLAN/RUN/DRAFT/DONE/TODO) → 클릭 시 순환·저장
- 투두 체크 상태 → 배열로 localStorage.setItem
- 페이지 로드 시 → localStorage에서 복원
- 데이터 초기화 버튼 1개 추가
```

### 영속성 참고 자료

- [Claude Live Artifacts (eigent.ai)](https://www.eigent.ai/blog/claude-live-artifacts-guide)
- [Use live artifacts in Claude Cowork (Anthropic Help)](https://support.claude.com/en/articles/14729249-use-live-artifacts-in-claude-cowork)
- [Build and share AI-powered apps with Claude — Simon Willison](https://simonwillison.net/2025/Jun/25/ai-powered-apps-with-claude/)
- [Supabase official Claude connector](https://supabase.com/blog/supabase-is-now-an-official-claude-connector)

---

## 후속 클래스 연결

오늘 만든 마케터 점검판을 더 키우고 싶다면:

- AI 도구·기능 더 다양하게 → **AI 툴 활용 × 초급**
- 매일 자동 실행되는 작업 (Tasks·MCP·Supabase Connector) → **에이전틱 AI × 기초**
- 오늘 만든 대시보드를 본격 웹·앱 + Vercel·Supabase 배포 → **바이브코딩 × 기초** ⭐
- Sheet·Notion·Zapier 실제 연결 → **AX 클래스**

---

## 라이선스 / 출처

- 본 데모 팩은 SemiClass 비정기 클래스 "AI 쉽고 재밌게 활용하기: 기초편" 운영 자료.
- 가상 페르소나 김민지씨, 가상 캠페인·KPI·카드 사용 내역. 실제 인물·회사·데이터와 무관.
- 본 자료는 자유롭게 변주·재배포 가능 (CC BY 4.0).
- 강의 등록 / 후속 트랙 안내: https://semi-colon.space/lectures/semiclass-ai-basic-automation
