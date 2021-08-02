import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';
//Talvez esses carinhas estejam mais para bloc
class PlayerButtonController {
  final IBeat beat;

  PlayerButtonController({required this.beat});


  ValueNotifier<bool> pauseNotifier = ValueNotifier(false);

  pause() {
    beat.pause();
    pauseNotifier.value = true;
  }

  resume() {
    beat.resume();
    pauseNotifier.value = false;
  }
}
