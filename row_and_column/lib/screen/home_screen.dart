import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.orange,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.green,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.orange,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.orange,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.green,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.green,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
