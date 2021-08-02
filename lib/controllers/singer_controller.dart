import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';
import 'package:rap_training/features/training_section/interfaces/beat_interface.dart';
import 'package:rap_training/features/beat/services/beat_service.dart';
import 'package:rap_training/features/training_section/services/lyrics_service.dart';

enum PlayerStatus {
  Loading,
  Playing,
  Paused,
  Stopped,
}



class SinglerController {
  ValueNotifier<bool> pauseNotifier = ValueNotifier(false);
  ValueNotifier<PlayerStatus> status = ValueNotifier(PlayerStatus.Loading);



  LyricsService _lyricsService = LyricsService();

  get lyric => _lyricsService.notifier;


  @override
  play(String url) {
    _lyricsService.play();
  }

  pause() {
    pauseNotifier.value = true;
    _lyricsService.pause();
  }

  resume() {
    pauseNotifier.value = false;
    _lyricsService.resume();
  }

  restart() {
    // DONE
    _lyricsService.restart();
  }
}
