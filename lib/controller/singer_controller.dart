import 'package:flutter/material.dart';
import 'package:rap_training/interfaces/player_interface.dart';
import 'package:rap_training/services/audio_service.dart';
import 'package:rap_training/services/lyrics_service.dart';

enum PlayerStatus {
  Loading,
  Playing,
  Paused,
  Stopped,
}



class SinglerController implements IAudioPlayer {
  ValueNotifier<bool> pauseNotifier = ValueNotifier(false);
  ValueNotifier<PlayerStatus> status = ValueNotifier(PlayerStatus.Loading);

  AudioService _audioService = AudioService();
  LyricsService _lyricsService = LyricsService();

  // TODO: Colocar o notifyer do audio aqui dentro

  //TODO: Trocar as letras para stream
  get lyric => _lyricsService.notifier;

  @override
  stop() {
    _audioService.stop();
  }

  @override
  play(String url) {
    _lyricsService.play();
    _audioService.play(url);
  }

  pause() {
    pauseNotifier.value = true;
    _lyricsService.pause();
    _audioService.pause();
  }

  resume() {
    pauseNotifier.value = false;
    _lyricsService.resume();
    _audioService.resume();
  }

  restart() {
    // DONE
    _lyricsService.restart();
    _audioService.restart();
  }
}
