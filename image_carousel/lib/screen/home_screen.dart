import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0, // PageView children의 index 0부터 시작
  );

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
      const Duration(
        seconds: 2,
      ),
      (timer) {
        int currentPage = controller.page!.toInt(); // 반올림
        int nextPage = currentPage + 1;

        if (nextPage > 4) {
          nextPage = 0; // 네 번째 이미지에서 다시 처음으로 돌아가기 위함
        }

        controller.animateToPage(
          nextPage,
          duration: const Duration(
            milliseconds: 400,
          ),
          curve: Curves.linear,
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();

    if (timer != null) {
      timer!.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5]
            .map(
              (num) => Image.asset(
                'asset/img/image_$num.jpeg',
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }
}
