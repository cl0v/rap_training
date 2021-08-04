import 'package:flutter/material.dart';

abstract class ILyricPlayer {
  ValueNotifier<String> get notifier;
  play();
  restart(); // Fast stop and play
  pause();
  resume();
  stop();
}
