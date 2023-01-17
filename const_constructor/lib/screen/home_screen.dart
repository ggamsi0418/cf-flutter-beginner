import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

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
            const TestWidget(
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

class TestWidget extends StatelessWidget {
  final String label;

  const TestWidget({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('$label build 실행!');

    return Container(
      child: Text(
        label,
      ),
    );
  }
}
