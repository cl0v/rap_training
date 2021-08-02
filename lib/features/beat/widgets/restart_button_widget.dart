import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';

class RestartBeatButtonWidget extends StatelessWidget {

  restart(context) {
    final IBeat? beat = BeatProvider.of(context)?.beat;
    if (beat != null) {
      beat.restart();
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.refresh,
        color: Colors.black,
      ),
      onPressed: () => restart(context),
    );
  }
}
