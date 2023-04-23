import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../entity/params.dart';

class InfinityTextController extends GetxController {
  final int initSpeed;
  RxInt scrollSpeed = 1.obs;
  var isScroll = true.obs;

  InfinityTextController(this.initSpeed);

  late final ScrollController scrollController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollSpeed.value = initSpeed;
    WidgetsBinding.instance.addPostFrameCallback(_delayedStart);
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void increaseSpeed() {
    scrollSpeed.value++;
    Params.speed++;
  }

  void decreaseSpeed() {
    if (scrollSpeed.value < 2) return;
    scrollSpeed.value--;
    Params.speed--;
  }

  void _delayedStart(_) {
    Future.delayed(const Duration(milliseconds: 100)).then((_) => _scroll());
  }

  void scrollSwitch() {
    if (isScroll.value = !isScroll.value) _scroll();
  }

  void _scroll() async {
    while (isScroll.value) {
      final maxExtent = scrollController.position.maxScrollExtent;
      if (scrollController.hasClients && maxExtent > 0 && maxExtent.isFinite) {
        await scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: Duration(seconds: maxExtent ~/ scrollSpeed.value),
          curve: Curves.linear,
        );
      }
      // Check the value of isScroll every 100 milliseconds.
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }
}
