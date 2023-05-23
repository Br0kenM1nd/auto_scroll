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
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: c.decreaseSpeed5, child: const Text('-5')),
            const SizedBox(width: 8),
            ElevatedButton(onPressed: c.decreaseSpeed, child: const Text('-')),
            const SizedBox(width: 8),
            Text(
                c.scrollSpeed.toString(),
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            const SizedBox(width: 8),
            ElevatedButton(onPressed: c.increaseSpeed, child: const Text('+')),
            const SizedBox(width: 8),
            ElevatedButton(onPressed: c.increaseSpeed5, child: const Text('+5')),
          ],
        ),
      ),
    );
  }
}
