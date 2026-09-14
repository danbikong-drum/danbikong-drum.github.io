# 발라드 필인 라이브러리

발라드 드럼 필인을 분류 체계(taxonomy)에 따라 코드화하고, MuseScore로 만든 악보/오디오를 누적 관리하기 위한 저장소입니다.

## 구성

| 경로 | 내용 |
|---|---|
| [`taxonomy.md`](./taxonomy.md) | 필인 코드 체계 정의 (6개 축 + 조합 규칙) |
| [`catalog.csv`](./catalog.csv) | 만든 필인 전체 목록 (코드, 속성, 발행 상태, 출처 추적) |
| [`scores/`](./scores) | 필인 코드별 실제 파일(MusicXML/PDF/PNG/오디오) 보관 |

## 새 필인을 추가하는 순서

1. `taxonomy.md`의 6개 축을 조합해 코드를 정한다 (예: `BAL-4B-M78-BUILD-TOM-Lv2`)
2. `catalog.csv`에 한 줄 추가한다 (`status`는 `draft`로 시작)
3. MuseScore에서 작업한 파일을 `scores/<코드>/`에 저장한다
   - `<코드>.mscz`, `<코드>.pdf`, `<코드>.png`, `<코드>.mp3` (또는 `.musicxml`)
4. 블로그에 발행하면 `catalog.csv`의 `status`를 `published`로 바꾸고 `blog_url`을 채운다

`status` 값: `example`(템플릿 예시 행) · `draft`(제작 중) · `published`(발행 완료)

## 저작권 추적

`catalog.csv`의 `source_type` / `permission_status` 컬럼으로 출처를 항상 남깁니다.

- `original` — 레슨 컨셉을 본인 스타일로 재구성한 오리지널 필인 (기본적으로 안전)
- `lesson-inspired` — 득일쌤 레슨 컨셉에서 아이디어를 가져왔지만 패턴은 재구성함
- `cover-transcription` — 특정 연주(득일쌤 영상 등)나 원곡을 그대로 채보 → `permission_status`가 `granted`가 아니면 발행/판매 보류

자세한 제작 파이프라인·A/B 테스트·상업화 로드맵은 대화용 마스터플랜 문서를 따로 참고하세요 (이 저장소는 taxonomy와 실제 산출물 적재용).
