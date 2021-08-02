import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/pages/beat_page.dart';
import 'package:rap_training/features/beat/services/beat_service.dart';
import 'package:rap_training/features/beat/widgets/player_button_widget.dart';
import 'package:rap_training/features/beat/widgets/restart_button_widget.dart';
import 'package:rap_training/features/lyrics/widgets/lyrics_widget.dart';

//TODO: Manter o inicio sincronizado, as vezes o audio pode atrasar
// TODO: Começar ambos ao mesmo tempo

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

  


  @override
  Widget build(BuildContext context) {
    return BeatPage(
      beat: BeatService(
        audioUrl: widget.songUrl,
        audioPlayer: AudioPlayer(),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            RestartBeatButtonWidget(),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LyricsWidget(
                wordList: widget.wordList,
              ),
              SizedBox(
                height: 32,
              ),
              PlayBeatButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
