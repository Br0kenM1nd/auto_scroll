import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infinity_text_controller.dart';

class ScrollingText extends StatelessWidget {
  final List<String> text;
  final int scrollSpeed;
  final double spacing;
  final TextStyle textStyle;

  const ScrollingText({
    required this.text,
    this.scrollSpeed = 30,
    this.spacing = 0,
    this.textStyle = const TextStyle(fontSize: 16),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(InfinityTextController(scrollSpeed));
    return GestureDetector(
      onTap: c.scrollSwitch,
      child: ListView.builder(
        controller: c.scrollController,
        itemCount: text.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: EdgeInsets.symmetric(vertical: spacing),
          child: Text(text[index], style: textStyle),
        ),
      ),
    );
  }
}
