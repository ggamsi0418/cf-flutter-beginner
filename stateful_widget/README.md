# [코드팩토리][초급] stateful_widget

## 메모

### `StatelessWidget`

- Constructor로 생성된 후 바로 build 함수가 실행된다.

  <img width="50%" src="https://user-images.githubusercontent.com/58096698/212484515-220037e2-23f1-4c0c-be63-72524fd21435.png"></img>

### `StatefulWidget`

<img width="90%" src="https://user-images.githubusercontent.com/58096698/212484733-b5728d84-dde6-4a41-89a4-10381f20eb5b.png"></img>

- StatefulWidget은 기본적으로 두 개의 class로 구성되어 있다.

- 기본적인 생명주기

  - 1 -> 2 -> 3 -> 4 -> (dirty) -> 5 -> (clean) -> 8 -> 9

- 파라미터가 바뀌었을 때 생명주기

  - 1 -> 6 -> (dirty) -> 5 -> (clean)

- setState를 실행했을 때 생명주기

  - 7 -> (dirty) -> 5 -> (clean)

- 즉 StatefulWidget이 가지고 있는 상태값이 변경되면,  
  widget은 새롭게 생성되지만 state는 이전 widget의 state를 사용한다.

### `GestureDetector`

- 화면(widget)에서 일어나는 행동(이벤트)에 대해 정의하고 원하는 동작을 수행할 수 있다.

## 실습

- Stateful Widget의 생성 및 소멸

  <img width="60%" src="https://user-images.githubusercontent.com/58096698/212485553-e3b2a5ec-e1e5-47b1-ba1f-71035465e51d.gif"></img>

- Stateful Widget의 파라미터 변경

  <img width="60%" src="https://user-images.githubusercontent.com/58096698/212485700-bff391aa-e49c-4a2c-9de7-a56d9f7397b1.gif"></img>

- Stateful Widget에서 setState 사용

  <img width="50%" src="https://user-images.githubusercontent.com/58096698/212486719-494cec5c-0f7e-4241-a964-04dec2e8d497.gif"></img>
