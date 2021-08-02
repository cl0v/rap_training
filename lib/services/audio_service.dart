import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/constants.dart/audio_url.dart';
import 'package:rap_training/interfaces/player_interface.dart';

// Vai virar service e terá o controller do combo, que reinicia tanto a letra quanto a musica

class AudioService implements IAudioPlayer {
  bool musicFinished = false;

  final startNotifier = ValueNotifier(false);

  AudioPlayer audioPlayer = AudioPlayer();

  @override
  stop() {
    audioPlayer.stop();
  }

  @override
  play(String url) async {
    int result = await audioPlayer.play(url);
    //  TODO: Quando resultado for 1, ele vai começar a musica
    if (result == 1) {
      startNotifier.value = true;
    }
  }

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
