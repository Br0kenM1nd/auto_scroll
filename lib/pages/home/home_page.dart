import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../file_page.dart';
import 'home_controller.dart';

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
            title: Text(c.userTexts[index].title.split('/').last),
            onLongPress: () => c.removeFilePath(index),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FilePage(c.userTexts[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
