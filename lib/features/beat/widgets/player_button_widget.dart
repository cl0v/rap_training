import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/controller/player_button_controller.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';

class PlayBeatButtonWidget extends StatefulWidget {
  @override
  _PlayBeatButtonWidgetState createState() => _PlayBeatButtonWidgetState();
}

class _PlayBeatButtonWidgetState extends State<PlayBeatButtonWidget> {
  late final controller;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final beat = BeatProvider.of(context)!.beat; //Verificar possiveis erros
    // por ausencia do nullsafe
    controller = PlayerButtonController(beat: beat);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.pauseNotifier,
      builder: (BuildContext context, bool value, Widget? child) {
        return IconButton(
          onPressed: value ? controller.resume : controller.pause,
          icon: Icon(
            value ? Icons.play_arrow : Icons.pause,
            size: 32,
          ),
        );
      },
    );
  }
}
