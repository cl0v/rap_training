import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';

import 'package:rap_training/features/training_section/constants.dart/audio_url.dart';

// Vai virar service e terá o controller do combo, que reinicia tanto a letra quanto a musica

class BeatService implements IBeat {
  AudioPlayer audioPlayer;
  String audioUrl;

  BeatService({
    required this.audioPlayer,
    required this.audioUrl,
  }) {
    play(audioUrl);
    // TODO: Remover isso fará a musica parar de iniciar
    // assim que a página é aberta
  }

  @override
  stop() {
    audioPlayer.stop();
  }

  @override
  play(String url) async {
    audioPlayer.play(url);
  }
  // int result = await audioPlayer.play(url);
  // //  TODO: Quando resultado for 1, ele vai começar a musica
  // if (result == 1) {
  // }

  @override
  restart() async {
    await audioPlayer.stop();
    audioPlayer.play(mp3url);
  }

  @override
  pause() {
    audioPlayer.pause();
  }

  @override
  resume() {
    audioPlayer.resume();
  }
}
