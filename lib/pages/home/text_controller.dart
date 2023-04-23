import 'dart:io';

import 'package:auto_scroll/entity/params.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../entity/user_text.dart';

class HomeController extends GetxController {
  final box = GetStorage();
  final userTexts = <UserText>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadFilePaths();
  }

  Future<void> _loadFilePaths() async {
    final texts = await box.read('userTexts') as List;
    userTexts.value = texts.map((e) => UserText.fromJson(e)).toList();
  }

  Future<void> _saveFilePaths() async {
    await box.write('userTexts', userTexts.map((e) => e.toJson()).toList());
  }

  Future<void> addFilePath(String filePath) async {
    final file = File(filePath);
    final text = await file.readAsLines();
    final title = file.path;
    userTexts.add(UserText(
      text: text,
      title: title,
      style: Params.style,
      speed: Params.speed,
    ));
    await _saveFilePaths();
  }

  Future<void> removeFilePath(int index) async {
    userTexts.removeAt(index);
    await _saveFilePaths();
  }

  Future<void> pickFiles() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result != null) {
      for (final file in result.files) {
        if (file.path != null) await addFilePath(file.path!);
      }
    }
  }
}
