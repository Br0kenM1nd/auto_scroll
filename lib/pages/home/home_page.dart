import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add_text_page.dart';
import '../text_page.dart';
import 'text_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: c.pickFiles, icon: const Icon(Icons.file_copy)),
        ],
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: c.userTexts.length,
          itemBuilder: (context, index) => ListTile(
            onLongPress: () => c.removeFilePath(index),
            onTap: () => Get.to(() => TextPage(c.userTexts[index])),
            title: Text(c.userTexts[index].title.split('/').last),
          ),
        ),
      ),
      floatingActionButton: IconButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
        ),
        onPressed: () => Get.to(() => const AddTextPage()),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
