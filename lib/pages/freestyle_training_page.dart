import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/controllers/freestyle_training_controller.dart';
import 'package:rap_training/features/beat/bloc/beat_bloc.dart';
import 'package:rap_training/features/beat/pages/beat_page.dart';
import 'package:rap_training/features/beat/widgets/pause_resume_button_widget.dart';
import 'package:rap_training/features/beat/widgets/play_stop_button_widget.dart';
import 'package:rap_training/features/beat/widgets/restart_button_widget.dart';
import 'package:rap_training/features/lyrics/blocs/lyrics_bloc.dart';
import 'package:rap_training/features/lyrics/pages/lyrics_page.dart';
import 'package:rap_training/features/lyrics/widgets/lyrics_widget.dart';

//TODO: Manter o inicio sincronizado, as vezes o audio pode atrasar
// TODO: Começar ambos ao mesmo tempo

//TODO: Quando aperta o play o pouse imediatamente reseta

enum PlayerStatus {
  PLAYING,
  PAUSED,
  RESTARTED,
  RESUMED,
  STOPED,
}

class FreeStyleTrainingPage extends StatefulWidget {
  final String songUrl;
  final List<String> wordList;

  const FreeStyleTrainingPage({
    Key? key,
    required this.songUrl,
    required this.wordList,
  }) : super(key: key);

  @override
  _FreeStyleTrainingPageState createState() => _FreeStyleTrainingPageState();
}

class _FreeStyleTrainingPageState extends State<FreeStyleTrainingPage> {
  late FreeStyleTrainingController controller;

  @override
  void initState() {
    controller = FreeStyleTrainingController(
      beat: BeatBloc(
        audioUrl: widget.songUrl,
        audioPlayer: AudioPlayer(),
      ),
      lyric: LyricsBloc(words: widget.wordList),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

// TODO: A funcao do controller seria mostrar qual o status do botao agora
// e com isso trocar no outro para condizer.
  @override
  Widget build(BuildContext context) {
    return BeatPage(
      bloc: controller.beat,
      child: LyricsPage(
        bloc: controller.lyric,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              RestartBeatButtonWidget(
                onRestart: controller.restart,
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LyricsWidget(),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayBeatButtonWidget(
                      onPlay: controller.play,
                      onStop: controller.stop,
                    ),
                    PauseBeatButtonWidget(
                      enabled: true,
                      onPause: controller.pause,
                      onResume: controller.resume,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
