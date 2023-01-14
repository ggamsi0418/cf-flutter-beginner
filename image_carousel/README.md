# [코드팩토리][초급] Image Carousel

## 메모

### `PageView`

- 스크롤이 가능한 스크린을 만들 수 있다.
- `PageController`를 이용하여 해당 widget을 제어할 수 있다.  
  그리고 메모리 누수 방지를 위해 widget 소멸시 controller로 함께 제거해야 한다.

  ```dart
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }
  ```

### `Timer`

- 지속적으로 특정 동작을 수행할 때 사용할 수 있다.
- dart:async 패키지에서 제공된다.
- widget이 소멸되는 순간에 timer도 멈추도록 조치를 취해야 한다. (메모리 누수 방지)

  ```dart
  @override
  void dispose() {
    if (timer != null) {
      timer!.cancel();
    }

    super.dispose();
  }
  ```

### `SystemChrome.setSystemUIOverlayStyle`

- service.dart 패키지에서 가져온다.
- (모바일) 상태바의 색상을 변경할 수 있다.

  <img src="https://user-images.githubusercontent.com/58096698/212490080-426bfa52-3da1-4277-9a92-dee92f97378f.png"></img>
  <img src="https://user-images.githubusercontent.com/58096698/212490088-1c3ae7b0-53b6-459d-a569-c714a7885f0b.png"></img>
  <img src="https://user-images.githubusercontent.com/58096698/212490098-f6edc30d-3ac2-454b-b6e8-7b93afa93993.png"></img>
  <img src="https://user-images.githubusercontent.com/58096698/212490106-960f0ac5-0aa2-4f5b-b310-d1a0ad8aef37.png"></img>

## 실습

<img height="500" src="https://user-images.githubusercontent.com/58096698/212490286-9c23dfd1-d237-44b9-a9a3-9a80d5dae98c.gif"></img>
