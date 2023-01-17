# [코드팩토리][초급] Const Constructor

## 메모

- const는 언제 사용?
  - build 타임에 값을 알고 있을 때
- const가 사용된 위젯은 최초 build에서 그려진 후 다음 build에서는 이전에 그려놓은 위젯을 다시 사용한다.  
  아래 그림을 보면 test1 & test2 두 위젯 모두 최초 빌드에서 그려졌지만,
  빌드 버튼을 클릭하여 setState가 동작했을 때 다시 build되면  
  test2만 다시 그려지는 것을 볼 수 있다. -> `효율적인 렌더링이 가능!`

  ```dart
  class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TestWidget(
              label: 'test1',
            ),
            TestWidget(
              label: 'test2',
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  print('setState 동작!');
                });
              },
              child: const Text(
                '빌드',
              ),
            ),
          ],
        ),
      ),
    );
   }
  }
  ```

  <img width="20%" src="https://user-images.githubusercontent.com/58096698/212929942-d1203583-b0d5-4ddd-8185-d43c50e55687.png"></img>
  <img  src="https://user-images.githubusercontent.com/58096698/212930213-5ce4a2eb-9049-43cc-9a22-2bbb82c96ab3.png"></img>
