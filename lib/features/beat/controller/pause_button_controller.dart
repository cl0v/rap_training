import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/controller/dual_choice_button_controller.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';

//Talvez esses carinhas estejam mais para bloc

class PauseButtonController extends DualChoiceButtonController {
  PauseButtonController({
    VoidCallback? onResume,
    VoidCallback? onPause,
    required IBeat beat,
  }) : super(
          isActive: true,
          onPrimary: () {
            beat.resume();
            onResume?.call();
          },
          onSecundary: () {
            beat.pause();
            onPause?.call();
          },
        );
}
