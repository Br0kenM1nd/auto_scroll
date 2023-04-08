import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) => _delayedStart());
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void increaseSpeed() {

  }

  void decreaseSpeed() {

  }

  void _delayedStart() async {
    await Future.delayed(const Duration(milliseconds: 100));
    _scroll();
  }

  void scrollSwitch() {
    isScroll.value = !isScroll.value;
    if (isScroll.value) _scroll();
  }

  void _scroll() async {
    while (isScroll.value) {
      await Future.delayed(const Duration(milliseconds: 100));
      if (scrollController.hasClients &&
          scrollController.position.maxScrollExtent > 0 &&
          scrollController.position.maxScrollExtent.isFinite) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: Duration(
            seconds:
                scrollController.position.maxScrollExtent ~/ scrollSpeed.value,
          ),
          curve: Curves.linear,
        );
      }
    }
  }
}
