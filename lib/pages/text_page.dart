import 'package:auto_scroll/widgets/speed_regulator.dart';
import 'package:flutter/material.dart';

import '../entity/user_text.dart';
import '../widgets/infinity_text/infinity_text.dart';

class TextPage extends StatelessWidget {
  final UserText userText;

  const TextPage(this.userText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(userText.title)),
      body: ScrollingText(userText),
      floatingActionButton: const SpeedRegulator(),
    );
  }
}
