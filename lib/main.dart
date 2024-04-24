// import 'package:english_words/english_words.dart';

import 'package:flutter/material.dart';
import 'package:samplevault_daw/src/app.dart';
import 'package:samplevault_daw/src/track_editor/sample.dart';

void main() {
  SampleFile.readSampleFile();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Vaulte DAW',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            const ColorScheme.dark(), //fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(),
    );
  }
}
