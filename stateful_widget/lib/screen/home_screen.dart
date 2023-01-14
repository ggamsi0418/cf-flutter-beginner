import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({
    required this.color,
    super.key,
  }) {
    print('[Widget] constructor 실행!');
  }

  @override
  State<HomeScreen> createState() {
    print('[Widget] createState 실행!');

    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    print('[State] initState 실행!');

    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('[State] didChangeDependencies 실행!');

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print("[State] didUpdateWidget 실행!");

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("[State] build 실행!");

    return GestureDetector(
      onTap: () {
        setState(() {
          number += 1;
        });
      },
      child: Container(
          width: 50.0,
          height: 50.0,
          color: widget.color,
          child: Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          )),
    );
  }

  @override
  void deactivate() {
    print("[State] deactivate 실행!");

    super.deactivate();
  }

  @override
  void dispose() {
    print("[State] dispose 실행!");

    super.dispose();
  }
}
