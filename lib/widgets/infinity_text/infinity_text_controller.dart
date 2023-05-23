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
    scrollSwitch();
    scrollSwitch();
  }

  void increaseSpeed5() {
    scrollSpeed.value += 5;
    Params.speed += 5;
    scrollSwitch();
    scrollSwitch();
  }

  void decreaseSpeed() {
    if (scrollSpeed.value < 2) return;
    scrollSpeed.value--;
    Params.speed--;
    scrollSwitch();
    scrollSwitch();
  }

  void decreaseSpeed5() {
    if (scrollSpeed.value < 7) {
      scrollSpeed.value = 1;
      Params.speed = 1;
      return;
    }
    scrollSpeed.value -= 5;
    Params.speed -= 5;
    scrollSwitch();
    scrollSwitch();
  }

  void _delayedStart(_) {
    Future.delayed(const Duration(milliseconds: 100)).then((_) => _scroll());
  }

  void scrollSwitch() {
    if (isScroll.value = !isScroll.value) _scroll();
  }

  void _scroll() async {
    await _animateScroll();
  }

  Future<void> _animateScroll() async {
    if (_isCanScroll()) {
      await scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(
          seconds:
              scrollController.position.maxScrollExtent ~/ scrollSpeed.value,
        ),
        curve: Curves.linear,
      );
    }
    // Check the value of isScroll every 100 milliseconds.
    await Future.delayed(const Duration(milliseconds: 100));
  }

  bool _isCanScroll() =>
      scrollController.hasClients &&
      scrollController.position.maxScrollExtent > 0 &&
      scrollController.position.maxScrollExtent.isFinite;
}
