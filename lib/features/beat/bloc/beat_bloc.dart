import 'package:audioplayers/audioplayers.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';

class BeatBloc implements IBeat {
  AudioPlayer audioPlayer;
  String audioUrl;

  BeatBloc({
    required this.audioPlayer,
    required this.audioUrl,
  });

  @override
  stop() => audioPlayer.stop();

  @override
  play() => audioPlayer.play(audioUrl);

  @override
  restart() => audioPlayer.stop().then((value) => play());

  @override
  pause() => audioPlayer.pause();

  @override
  resume() => audioPlayer.resume();
}
