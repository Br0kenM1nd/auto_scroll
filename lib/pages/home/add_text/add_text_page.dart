import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_text_controller.dart';

class AddTextPage extends StatelessWidget {
  const AddTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(AddTextController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: c.addTextFromUserInput,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: c.title,
              maxLines: null,
              decoration: const InputDecoration(
                hintText: 'Введите название текста...',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: c.body,
              maxLines: 10,
              decoration: const InputDecoration(hintText: 'Введите текст...'),
            ),
          ],
        ),
      ),
    );
  }
}
