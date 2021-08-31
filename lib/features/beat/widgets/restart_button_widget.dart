import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';

class RestartBeatButtonWidget extends StatelessWidget {
  final VoidCallback? onRestart;

  const RestartBeatButtonWidget({Key? key, this.onRestart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.refresh,
          color: Colors.black,
        ),
        onPressed: onRestart ??
            () {
              final beat = BeatProvider.of(context).bloc;
              beat.restart();
            });
  }
}
