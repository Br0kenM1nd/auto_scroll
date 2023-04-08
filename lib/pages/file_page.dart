import 'dart:io';

import 'package:auto_scroll/widgets/speed_regulator.dart';
import 'package:flutter/material.dart';

import '../entity/user_text.dart';
import '../widgets/infinity_text/infinity_text.dart';

class FilePage extends StatelessWidget {
  // final String filePath;
  final UserText userText;

  const FilePage(this.userText, {Key? key}) : super(key: key);

  // Future<List<String>> _readFile() async => File(filePath).readAsLines();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Viewer')),
      body: ScrollingText(text: userText.text, scrollSpeed: 30),
      bottomSheet: const SpeedRegulator(),
    );
  }
}
