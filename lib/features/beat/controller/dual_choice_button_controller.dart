
import 'package:flutter/material.dart';

class DualChoiceButtonController {
  bool isActive;
  VoidCallback onPrimary;
  VoidCallback onSecundary;

  DualChoiceButtonController({
    this.isActive = false,
    required this.onPrimary,
    required this.onSecundary,
  });

  late ValueNotifier<bool> active = ValueNotifier<bool>(isActive);


  onPressed(bool playing) {
    active.value = !playing;
    !playing ? onPrimary() : onSecundary();
  }
}
