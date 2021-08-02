import 'dart:async';

import 'package:flutter/material.dart';

class LyricsService  {
  LyricsService({required List<String> wordList}) {
    play(wordList);
  }
  //TODO: Implementar o player no timer
  
  final notifier = ValueNotifier<String>('READY!');

  void pause() {
    // Dar um jeito de manter a palavra que está no momento
    // Depois melhorar para manter a palavra e ainda guardar os segundos que falta pra proxima

    // TODO: implement pause
  }

  play(List<String> list) async {
    for (var w in list) {
      await Future.delayed(Duration(seconds: 1));
      notifier.value = w;
    }
  }

  void restart() {
    // play(); //TODO: Implementar restart
  }

  void resume() {
    // TODO: implement resume
  }
}
