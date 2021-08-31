import 'package:flutter/material.dart';

import 'package:rap_training/features/beat/interfaces/beat_interface.dart';

import 'dual_choice_button_controller.dart';

class PlayButtonController extends DualChoiceButtonController {
  PlayButtonController({
    VoidCallback? onPlay,
    VoidCallback? onStop,
    required IBeat beat,
  }) : super(
          isActive: false,
          onPrimary: () {
            beat.play();
            onPlay?.call();
          },
          onSecundary: () {
            beat.stop();
            onStop?.call();
          },
        );
}
