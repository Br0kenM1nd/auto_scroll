import 'dart:io';

import 'package:auto_scroll/entity/params.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../entity/user_text.dart';

class TextController extends GetxController {
  final box = GetStorage();
  final userTexts = <UserText>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadTexts();
  }

  Future<void> _loadTexts() async {
    final texts = await box.read('userTexts') as List?;
    if (texts == null) return;
    userTexts.addAll(texts.map((e) => UserText.fromJson(e)));
  }

  Future<void> saveTexts() async {
    await box.write('userTexts', userTexts.map((e) => e.toJson()).toList());
  }

  Future<void> addTextFromFile(String filePath) async {
    final file = File(filePath);
    final text = await file.readAsLines();
    final dir = file.path;
    userTexts.add(UserText(
      text: text,
      dir: dir,
      style: Params.style,
      speed: Params.speed,
    ));
    saveTexts();
  }

  Future<void> removeFilePath(int index) async {
    userTexts.removeAt(index);
    await saveTexts();
  }

  Future<void> pickFiles() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      for (final file in result.files) {
        if (file.path != null) await addTextFromFile(file.path!);
      }
    }
  }
}
