# 실습 4 — 업무 결과물 4종 가이드 (마케터 시나리오)

> 단계 4 "결과물 만들기"의 4가지 형식별 시나리오·프롬프트·검증 체크리스트입니다. 본편은 1번(인포그래픽) 1개를 학생 모두 시도, 나머지 3종은 강사 30초 메뉴 시연. 본인이 흥미 있는 1개를 시도해보고 싶으면 본 가이드 참조.

## 공통 원칙

- **민감 데이터는 라운드 숫자 + 가명**: 캠페인명·회사명·고객명은 "A 캠페인 / X사 / B님"으로
- **본인 분야의 실제 결과물에 가까운 톤**: 임원 보고용 vs 동료 공유용 명확히
- **AI 결과는 초안**: 사람 검토 후 외부 발송. 본 가이드의 프롬프트 마지막에 "사람 검토 필요 부분 표시" 일관 명시

---

## 0. 페르소나 일러스트 4종 (보너스 — 강사용/자료 제작용)

> 슬라이드 3·4에 들어간 김민지씨 일러스트를 같은 톤·캐릭터로 만드는 프롬프트입니다. 본인이 강사·디자이너로서 자료를 다듬거나, 학생이 본인 페르소나 이미지를 만들어 보고 싶을 때 그대로 쓰거나 변주해 보세요.
>
> 도구: Claude Artifact (HTML/SVG 카드) 위주. 인물 일러스트 같은 사진톤은 외부 도구(ChatGPT 이미지·Gemini·SD 등)로 만들어 자료에 포함하셔도 됩니다.
>
> **캐릭터 시트(아래 0-A·0-B·0-C 공통)** — 두 프롬프트에 동일하게 반복해야 같은 인물로 인식됩니다.
>
> ```text
> A Korean woman in her early 30s named Minji, low ponytail of dark
> brown hair, soft slightly tired eyes, wearing a light gray cardigan
> over a white shirt. Modern marketer working at a wooden desk by a
> large window overlooking the night Seoul skyline with N Seoul Tower
> visible. Style: soft Korean webtoon illustration, anime-influenced
> lineart, warm cinematic lighting, clean detailed interiors,
> painterly textures.
> ```

### 0-A. 슬라이드 3 페르소나 책상 (16:9, 측면)

슬라이드 3 좌측 카드 — 가상의 동료 김민지씨를 소개하는 자리.

```text
[캐릭터 시트 — 위 블록 그대로 붙여넣기]

Setting: Late evening, Seoul. Side / over-the-shoulder view. Minji
seated at her desk, focused on her laptop screen which shows a
marketing dashboard with abstract charts. On the desk: printed
campaign report with bar charts, an SNS content calendar notebook,
sticky notes, a smartphone with notification bubbles, a small mug
of coffee, a small desk lamp glowing warmly. Behind her, a wall
calendar and a few organized folder spines.

Atmosphere: calm, capable, mid-task. Color palette: deep navy room,
warm orange desk lamp, soft cyan glow from the laptop screen,
muted blues outside the window.

Avoid: full front face shot, masculine silhouette, empty left side,
readable real-world logos or text, distorted hands.

Aspect ratio 16:9, high detail, cinematic.
```

### 0-B. 슬라이드 4 좌측 — 밤 11시 야근 (BEFORE)

화면 여섯 개를 오가며 야근하는 김민지씨.

```text
[캐릭터 시트 — 위 블록 그대로 붙여넣기]

Setting: Late night, around 11 PM. Cluttered desk, papers scattered.
Two screens visible — a laptop and a second external monitor — both
covered with multiple browser tabs and apps stacked over each other:
Notion task list, Slack messages, Google Sheets with numbers,
Instagram Insights dashboard, KakaoTalk Channel chat, a Google
Calendar view. Sticky notes covering the desk and the wall: yellow,
pink, blue, scribbled with reminders. A smartphone next to the
laptop also lights up with notifications. A half-finished cup of
cold coffee. Printed campaign reports lying messy across the desk.

Minji is leaning forward, one hand pressed against her forehead,
her other hand on the trackpad, slightly slumped posture, tired
expression. Cold blue glow from the screens reflected on her face
mixed with a warm orange desk lamp.

Atmosphere: visual overload, exhaustion, late-night overtime, the
sense of "doing the same thing across six different screens." Color
palette: deep navy and dark slate, with red-orange accents from the
desk lamp and sticky notes, cool screen glow.

A small desk clock shows 11:00 PM.

Avoid: cheerful expression, tidy desk, only one screen, daytime
lighting, cartoonish exaggeration.

Aspect ratio 16:9, high detail, cinematic, matching the same
illustrator style as the slide 3 illustration.
```

### 0-C. 슬라이드 4 우측 — 저녁 9시 점검 (AFTER)

한 화면 점검판으로 30초 만에 점검 후 퇴근하는 김민지씨.

```text
[캐릭터 시트 — 위 블록 그대로 붙여넣기]

Setting: Early evening, around 9 PM. Tidy, calmly lit desk. A
single laptop open, displaying a clean one-page dashboard with six
small widget cards in a 3x2 grid — campaign progress timeline, SNS
content calendar, KPI tracker with progress bars, fixed expenses
list, a short daily routine checklist, and a small monthly calendar
with colored dots. Soft blue and green glow from the dashboard
screen.

A warm mug of tea next to the laptop, a small notebook neatly
closed with a pen on top, a single sticky note with one line
written on it. No paper clutter. The window behind shows the Seoul
skyline still bright with early-evening city lights.

Minji is leaning back slightly in her chair, one hand around the
mug, a small content smile, relaxed shoulders, looking at the
dashboard with quiet satisfaction. Warm desk lamp light, soft and
diffused. The screen glow is gentle, not harsh.

Atmosphere: calm, focused, "everything in one place," post-work
relief. The feeling of a 30-second daily check before heading home.
Color palette: warm wood tones, soft teal and green accents from
the dashboard, deep navy outside the window, golden lamp light.

A small desk clock shows 9:00 PM.

Avoid: messy desk, multiple screens, panicked expression, harsh
contrast, cluttered sticky notes.

Aspect ratio 16:9, high detail, cinematic, matching the same
illustrator style as the BEFORE illustration.
```

### 0-D. 김민지씨 정면 아바타 (정사각형 1:1, 둥근 크롭용)

슬라이드 3 "김민지씨 (33세)" 카드 좌측에 들어가는 작은 둥근 아바타용.

```text
[캐릭터 시트 — 위 블록 그대로 붙여넣기]

Composition: Front-facing portrait, head and shoulders only. Soft
warm smile, eyes looking gently toward the viewer. Background
blurred out — show a hint of warm desk lamp glow and the Seoul
night skyline through a window, but keep it subtle and out of
focus. The character should feel like a friendly, capable colleague
introducing herself.

Aspect ratio 1:1 (square). Final image will be cropped into a
circle and have its background alpha-removed for use as a small
profile avatar on a dark navy slide.

Avoid: tilted angle, full body, busy background props, harsh
expressions, multiple people, text.
```

### 검증 (4종 공통)

- ☐ 4종 모두 같은 인물로 인식되는가? (헤어 톤·복장·얼굴형 일관성)
- ☐ 슬라이드 3 책상 일러스트와 슬라이드 4 두 장의 톤이 시리즈로 보이는가?
- ☐ 화면·서류에 읽을 수 있는 실제 문구·로고가 없는가?
- ☐ 슬라이드 배경 톤(#1D242B 계열)과 어울리는가?
- ☐ 아바타(0-D)는 정면 헤드샷이라 둥근 크롭 + 누끼 처리에 적합한가?

### 후처리 (강사용)

```bash
# 누끼 처리 (rembg + onnxruntime)
pip install rembg onnxruntime
python3 -c "
from rembg import remove
with open('input.png','rb') as f: out = remove(f.read())
open('output.png','wb').write(out)
"

# 정사각형 얼굴 크롭 + 600x600 리사이즈 (ImageMagick)
magick output.png -gravity center -crop 50%x50%+0-100 -resize 600x600 avatar.png
```

---

## 1. 캠페인 인포그래픽 1장 (대표 실습 — 모두 시도)

### 시점
캠페인 종료 직후 또는 중간 회고 시점. SNS·내부 공유용.

### 도구
Claude Artifact (우측 패널에서 HTML/SVG 카드로 직접 렌더) — 정사각형 1:1 권장. 사진톤이 필요하면 외부 이미지 생성 도구로 별도.

### 프롬프트 (임원 보고 톤)

```text
다음 5월 마케팅 캠페인 결과로 정사각형 인포그래픽 카드 1장 그려줘.

데이터 (가상, 라운드 숫자):
- 캠페인: "Hello May" 봄 신상 런칭
- 노출 230만 / 클릭 4.9만 / CTR 2.1%
- 전환 1,400 / ROAS 4.3x
- 매출 5,160만원 (목표 대비 +14.7%)

스타일:
- 다크 톤 (#1D242B 배경) + 블루(#068FFF)·옐로우(#FFD166) 액센트
- 친근하지만 정돈된 임원 보고용
- 헤더: "Hello May 회고 · 2026-05"
- 핵심 숫자 3개 큰 폰트로 강조
- 인사이트 1줄, 다음 액션 1줄
- 우측 하단 워터마크 "Marketing Team"
```

### 프롬프트 (동료 공유 톤)

```text
방금 만든 카드와 같은 데이터로 1장 더 만들어줘. 이번엔:
- 일러스트 느낌, 친근한 톤
- 이모지 3개 정도 자연스럽게 배치
- "수고했어요!" 메시지 1줄 추가
- 동료한테 슬랙에 공유할 톤
```

### 검증

- ☐ 라운드 숫자만 있는가? (정확 KPI 노출 X)
- ☐ 캠페인명·날짜 정확한가?
- ☐ 헤더·워터마크 톤이 본인 회사에 맞는가?
- ☐ SNS 외부 공유 가능한 톤인가? (내부 한정 정보가 노출됐는지)

---

## 2. 주간 보고서 PDF (강사 30초 시연)

### 시점
매주 금요일 오후. 캠페인·콘텐츠·CS 통합 보고.

### 도구
Claude Artifact (마크다운 직접 작성) → 브라우저에서 "인쇄 → PDF로 저장". 무료 플랜 OK.

### 프롬프트

```text
이번 주 마케팅 팀 주간 보고서를 마크다운으로 작성해줘. PDF로 변환 가능하게.

내용 (가상):
- 진행 중 캠페인 3개의 상태 (각 1줄 요약 + KPI 1개)
- 이번 주 발행한 SNS 콘텐츠 5개와 성과
- CS 인박스 미답변 건수와 빈도 높은 문의 카테고리 3개
- 다음 주 예정 액션 3개

구조:
1) 1줄 요약 (헤드라인)
2) 캠페인 진행 상황
3) 콘텐츠 성과
4) CS 인사이트
5) 다음 주 To-do

톤: 임원 보고용 존댓말. 표·불릿 적극 활용.
숫자는 모두 라운드 (만 단위, 백분율 소수 1째자리까지).
```

### 검증

- ☐ 임원이 30초에 읽을 수 있는 1줄 요약이 있는가?
- ☐ 각 섹션에 숫자 1개 이상 있는가?
- ☐ 다음 주 액션이 구체적인가? ("개선" 같은 모호한 단어 X)
- ☐ 회사 양식과 톤이 비슷한가? (보안 정책 위반은 없는가)

---

## 3. SNS 콘텐츠 카드 3장 (강사 30초 시연)

### 시점
캠페인 런칭/중간/마감 공지. 인스타 카드뉴스 / 카카오 채널 발송.

### 도구
Claude Artifact (HTML 카드 시리즈) — 세 장 모두 같은 톤으로 연속 작성. 외부 이미지 톤이 필요하면 별도 이미지 생성 도구.

### 프롬프트

```text
"Hello May" 봄 신상 캠페인 SNS 카드뉴스 3장을 만들어줘.
모두 일관된 톤·색감·폰트로 시리즈처럼 보이게.

1번째: 런칭 공지
- 메인 카피: "5월의 첫 날, 새로운 시작"
- 서브: 캠페인 기간·상품 카테고리

2번째: 중간 인기 후기
- 메인 카피: "지금 가장 많이 담은 5종"
- 서브: 상품 5개 카테고리 + 이모지

3번째: 마감 임박
- 메인 카피: "오늘 마지막"
- 서브: 종료 시간 + CTA "지금 보러가기"

공통 스타일:
- 정사각형 1:1
- 다크 배경 + 블루 + 옐로우 액센트
- 한글 폰트 가독성 우선
- 우측 하단 작은 워터마크 "X사 Marketing"
```

### 검증

- ☐ 3장이 같은 시리즈로 보이는가? (톤 일관성)
- ☐ 메인 카피 길이가 SNS에 적합한가? (15자 이내)
- ☐ CTA가 명확한가?
- ☐ 외부 공유 가능한가? (라이선스·민감정보)

---

## 4. 회의록 요약 PT (강사 30초 시연)

### 시점
회의 직후 결과 보고. 임원·관련 팀 공유.

### 도구
Claude — Marp 마크다운 작성 → 외부 변환 (또는 Notion 슬라이드).

### 프롬프트

```text
다음 회의록을 5장 슬라이드 마크다운(Marp 호환)으로 정리해줘.

회의: "Hello May" 캠페인 중간 회고
참석: 마케팅 3명 + 디자인 2명 + 영업 1명
요점:
- CTR 84% 달성 (목표 미달)
- 카드뉴스 효율 가장 높음
- 카카오 채널 CPC 1.4배 높음
- 결제 단계 이탈 발생
- 다음 캠페인 6/15 예정

슬라이드 구조:
1) 표지 — 회의 제목·날짜·참석자
2) 현재 상태 — 핵심 KPI 3개
3) 잘한 점 — 3개 불릿
4) 개선할 점 — 3개 불릿 (담당자 표시)
5) 다음 액션 — 3개 (날짜·담당자)

톤: 임원·관련 팀에게 메일 첨부할 수준.
숫자는 라운드 + 단위 표시.
```

### 검증

- ☐ 표지에 회의 제목·날짜 정확한가?
- ☐ 슬라이드당 글머리 5개 이하인가? (정보 과다 방지)
- ☐ 액션 항목에 담당자·날짜가 있는가?
- ☐ 참석자 동의 없이 공개해도 되는 수준인가?

---

## 결과물 4종 비교 — 본인 우선 1개 메모

| 형식 | 본인이 가장 자주 만드는가? | 가장 시간 소모하는 부분 | 본 클래스에서 시도? |
|------|--------------------------|---------------------|---------------------|
| 1. 인포그래픽 | ☐ | ☐ | ☐ (대표 실습) |
| 2. 주간 보고서 PDF | ☐ | ☐ | ☐ |
| 3. SNS 카드뉴스 | ☐ | ☐ | ☐ |
| 4. 회의록 PT | ☐ | ☐ | ☐ |

→ 본인이 시간 가장 많이 쓰는 1개를 골라 시도. 시간 부족하면 인포그래픽만 완성하고 나머지 3종은 메뉴 시연 결과만 보기.
