import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final WebViewController controller;
  final homeUrl = 'https://blog.codefactory.ai';

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(
        JavaScriptMode.unrestricted,
      )
      ..loadRequest(
        Uri.parse(homeUrl),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFFf69131,
        ),
        centerTitle: true,
        title: const Text(
          'Code Factory',
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(
                Uri.parse(
                  homeUrl,
                ),
              );
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
