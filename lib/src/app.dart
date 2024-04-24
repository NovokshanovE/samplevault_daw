// import 'package:english_words/english_words.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();
    // var pair = appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // appState.getNext();
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
