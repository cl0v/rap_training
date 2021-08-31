import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rap_training/features/lyrics/interfaces/lyric_player_interface.dart';

class ClockService {
  late Timer timer;
  start(int seconds, Function(Timer) onTick) {
    timer = Timer.periodic(Duration(seconds: seconds), onTick);
  }
}

class LyricsBloc implements ILyricPlayer {
  List<String> words;

  LyricsBloc({required this.words});

  final notifier = ValueNotifier<String>('READY!');

  final ClockService clock = ClockService();

  @override
  play() async {
    clock.start(1, (Timer t) => notifier.value = words[t.tick]);
  }

  @override
  pause() {
    // TODO: implement pause
    throw UnimplementedError();
  }

  @override
  restart() {
    // TODO: implement restart
    throw UnimplementedError();
  }

  @override
  resume() {
    // TODO: implement resume
    throw UnimplementedError();
  }

  @override
  stop() {
    // TODO: implement stop
    throw UnimplementedError();
  }

  
}
