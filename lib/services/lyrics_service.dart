import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pausable_timer/pausable_timer.dart';
import 'package:rap_training/interfaces/player_interface.dart';

class LyricsService implements IPlayer {
  int _index = 0;

  final timer = PausableTimer(Duration(seconds: 1), () => print('Fired!'));

  //TODO: Implementar o player no timer
  final notifier = ValueNotifier<String>('READY!');

  final palavras =
      '3 2 1 What I am trying to do is when a new user is registered'
          .split(' ');

  @override
  void pause() {
    // Dar um jeito de manter a palavra que está no momento
    // Depois melhorar para manter a palavra e ainda guardar os segundos que falta pra proxima
    
    // TODO: implement pause
  }

  @override
  play() async {
    for (var w in palavras) {
      await Future.delayed(Duration(seconds: 1));
      notifier.value = w;
    }
  }

  @override
  void restart() {
    _index = 0;
    play();
  }

  @override
  void resume() {
    // TODO: implement resume
  }
}
