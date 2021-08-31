import 'package:rap_training/features/beat/interfaces/beat_interface.dart';
import 'package:rap_training/features/lyrics/interfaces/lyric_player_interface.dart';

// Esse cara repetiu em todos os blocs
abstract class IFreeStyleTrainingControls {
  play();
  pause();
  resume();
  restart();
  stop();
}

class FreeStyleTrainingController implements IFreeStyleTrainingControls {
  final ILyricPlayer lyric;
  final IBeat beat;

  FreeStyleTrainingController({
    required this.lyric,
    required this.beat,
  });

  /*

  Status altera na seguinte dinamica
   enquanto Player, o primeiro botao mostra o quadrado, o segundo mostra o pause
   enquanto Paused, o primeiro botao mostra o quadrado, o segundo mostra o play
   enquanto Stoped, o primeiro mostra o play, o segundo mostra o pause, porem fica desativado
  */

  @override
  play() {
    print('> PLAYING');
    // lyric.play();
  }

  @override
  pause() {
    print('> PAUSED');
    // lyric.pause();
  }

  @override
  restart() {
    print('> RESTARTED');
    // lyric.restart();
  }

  @override
  resume() {
    print('> RESUMED');
    // lyric.resume();
  }

  @override
  stop() {
    print('> STOPED');
    // lyric.stop();
  }
}
