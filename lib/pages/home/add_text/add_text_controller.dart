import 'package:auto_scroll/entity/params.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../entity/user_text.dart';
import '../text_controller.dart';

class AddTextController extends GetxController {
  final title = TextEditingController();
  final body = TextEditingController();

  final textController = Get.find<TextController>();

  Future<void> addTextFromUserInput() async {
    if (title.text.isEmpty || body.text.isEmpty) return;
    textController.userTexts.add(UserText(
      dir: title.text,
      text: body.text.split('\n'),
      speed: Params.speed,
      style: Params.style,
    ));
    textController.saveTexts();
  }
}
