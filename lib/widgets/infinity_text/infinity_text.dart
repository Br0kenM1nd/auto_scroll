import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../entity/user_text.dart';
import 'infinity_text_controller.dart';

class ScrollingText extends StatelessWidget {
  final UserText userText;

  const ScrollingText(this.userText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(InfinityTextController(userText.speed));
    return GestureDetector(
      onTap: c.scrollSwitch,
      child: ListView.builder(
        controller: c.scrollController,
        itemCount: userText.text.length,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        itemBuilder: (_, i) => Text(userText.text[i], style: userText.style),
      ),
    );
  }
}
