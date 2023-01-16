# [코드팩토리][초급] U and I

## 이미지 및 폰트 등록

- font
  - https://fonts.google.com/
- image
  - https://www.drawkit.com/product/mental-health-psychology-illustrations
- `resource는 반드시 pubspec.yaml에 등록할 것!`

  ```yaml
  flutter:
    assets:
      - asset/img/

    fonts:
      - family: parisienne # flutter에서 사용할 이름 지정
        fonts:
          - asset: asset/font/Parisienne-Regular.ttf
      - family: sunflower
        fonts:
          - asset: asset/font/Sunflower-Light.ttf # weight의 default는 400, (최소 100, 최대 900)
          - asset: asset/font/Sunflower-Medium.ttf
            weight: 500
          - asset: asset/font/Sunflower-Bold.ttf
            weight: 700
  ```

## Date Picker

- `dialog`를 이용 (웹 브라우저에서 모달을 띄우는 것과 비슷?)
- `barrierDismissible`을 true로 설정하면, dialog를 닫을 수 있다.

## Align

- 만약 특정 위젯이 어디에 정렬되어야 하는지 모르는 경우에는 최대 사이즈를 차지하게 된다.

  - dialog는 기본적으로 전체 화면을 차지 하는데, build를 통해 받는 container가
    어느 위치에 존재하는지 모르기 때문에 흰색 배경이 전체를 차지하게 된 것이다.

    ```dart
    showCupertinoDialog(
      context: context,
      builder: ((BuildContext context) {
        return Container(
          color: Colors.white,
          height: 300,
        );
      }),
    );
    ```

    <img height="500" src="https://user-images.githubusercontent.com/58096698/212710875-05a70167-1790-49c8-bc5a-57d166ad05e1.png"></img>

- `Align 위젯`을 사용하면, 위치를 지정해줄 수 있다.

  - build를 통해 리턴되는 Container를 `Alignment.bottomCenter`를 이용하여 아래 중앙에 위치하게 했다.

    ```dart
    showCupertinoDialog(
      context: context,
      builder: ((BuildContext context) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 300,
          ),
        );
      }),
    );
    ```

    <img height="500" src="https://user-images.githubusercontent.com/58096698/212711181-5325e705-2bd6-40f3-9ba0-58292b09472e.png"></img>

## Theme

- 전역에서 테마(글꼴, 색상 등)를 설정하여, 각 위젯의 스타일에서 손쉽게 적용할 수 있다.

  ```dart
  void main() {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'sunflower',
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Colors.white,
              fontFamily: 'parisienne',
              fontSize: 80,
            ),
            headline2: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
            bodyText1: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
  ```

  ```dart
  class _TopPart extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;

  const _TopPart({
    required this.selectedDate,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final now = DateTime.now().add(const Duration(hours: 9));

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U&I',
            style: textTheme.headline1,
          ),
          Column(
            children: [
              Text(
                '우리 처음 만난 날',
                style: textTheme.bodyText1,
              ),
              Text(
                '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
                style: textTheme.bodyText2,
              ),
            ],
          ),
          IconButton(
            iconSize: 60,
            onPressed: onPressed,
            icon: Icon(
              Icons.favorite,
              color: Colors.red[500],
            ),
          ),
          Text(
            'D+${DateTime(
                  now.year,
                  now.month,
                  now.day,
                ).difference(selectedDate).inDays + 1}',
            style: textTheme.headline2,
          ),
        ],
      ),
    );
  }
  }
  ```

## 결과

<img height="500" src="https://user-images.githubusercontent.com/58096698/212725287-396957bb-a119-4276-80db-3d95662241e9.gif"></img>
