# 만국박람회 STEP3

## 키워드
- `Accessibility`, `Dynamic Type`
- `화면 고정`, `AutoLayout`
## 고민한점
### `accessibilityTraits`
- self.navigationController?.navigationBar.accessibilityTraits = .none 으로 해도 header가 읽힘  
값에 어떻게 접근해야 하는지 아직 모르겠음

### `Accessibility Inspactor를 통해 글자크기가 커질때 이슈`
- Accessibility Inspactor에서 글자크기를 키우면 네이게이션 버튼이름이 ‘한국의출품작’에서 원래의 ‘Back’으로 바뀌는 현상을 해결해 보려고 했지만 해결하지 못했음
- 네비게이션바의 버튼과 타이틀의 길이가 서로 겹치면서 일어나는 현상인 것으로 판단(타이틀의 길이가 짧으면 일어나지 않았음)
- 화면 첨부
<img src = "https://i.imgur.com/bMs5p9a.gif" height = 400>

### 첫번째 화면의 개최 기간에 VoiceOver적용시 이슈
- 첫번째 화면에서 아래 사진과 같이 적힌 레이블의 Voice Over적용시 앞의 기간만 년도로 읽고 뒤의 기간은 "일구공공일일일이" 라고 읽는 현상 발생
- <img src = "https://i.imgur.com/MXa8l6s.png" height = 60>
- 아래의 코드를 적용해서 인스펙터가 뒤의 문장도 년도로 읽게 처리함
<img src = "https://i.imgur.com/TPzHJF7.png" height = 80>

### `화면 고정`
- `UINavigiationController` 타입의 함수를 만들어서 `supportedInterfaceOrientations` 프로퍼티를 `override` 하여 `topViewController`일 때 세로 고정을 시켜줌
<img src = "https://i.imgur.com/cEsrsJ6.gif" height = 300>

## 배운개념
 -`supportedInterfaceOrientations` : 뷰 컨트롤러가 지원하는 방향에 대해 결정을 해주는 프로퍼티
