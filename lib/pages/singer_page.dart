import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/controllers/singer_controller.dart';
import 'package:rap_training/features/beat/pages/beat_page.dart';
import 'package:rap_training/features/beat/widgets/player_button_widget.dart';
import 'package:rap_training/features/beat/widgets/restart_button_widget.dart';

//TODO: Manter o inicio sincronizado, as vezes o audio pode atrasar
// TODO: Começar ambos ao mesmo tempo
class SingerPage extends StatefulWidget {
  final String songUrl;
  const SingerPage({
    Key? key,
    required this.songUrl,
  }) : super(key: key);

  @override
  _SingerPageState createState() => _SingerPageState();
}

class _SingerPageState extends State<SingerPage> {
  SinglerController controller = SinglerController();

  @override
  Widget build(BuildContext context) {
    return BeatPage(
      url: widget.songUrl,
      player: AudioPlayer(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [RestartButtonWidget()],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(
                  valueListenable: controller.lyric,
                  builder: (BuildContext context, String value, Widget? child) {
                    return Text(
                      value,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                    );
                  }),
              SizedBox(
                height: 32,
              ),
              PlayerButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
