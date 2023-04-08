import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infinity_text/infinity_text_controller.dart';

class SpeedRegulator extends StatelessWidget {
  const SpeedRegulator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<InfinityTextController>();
    return Opacity(
      opacity: .5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => c.scrollSpeed--,
            child: const Text('-'),
          ),
          const SizedBox(width: 8),
          Obx(
            () => Text(
              c.scrollSpeed.toString(),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () => c.scrollSpeed++,
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}
