import 'package:flutter/material.dart';

class ControllerAnimations {
  static late AnimationController _controllerMenuDeskTop;
  static late Animation _animationDelayManuDeskTop;

  static setControllerMenuDesktop(AnimationController controller) {
    _controllerMenuDeskTop = controller;
  }

  static getControllerMenuDesktop() {
    return _controllerMenuDeskTop;
  }

  static setAnimationDelayManuDeskTop(Animation animation) {
    _animationDelayManuDeskTop = animation;
  }

  static getAnimationDelayManuDeskTop() {
    return _animationDelayManuDeskTop;
  }

  static ValueNotifier<bool> menuDesktop = ValueNotifier(false);

  static setmenuDeskTop() {
    if (menuDesktop.value) {
      menuDesktop.value = false;
    } else {
      menuDesktop.value = true;
    }
  }
}
