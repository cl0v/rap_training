import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/controller/play_button_controller.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';

class PlayBeatButtonWidget extends StatefulWidget {
  final VoidCallback? onPlay;
  final VoidCallback? onStop;

  const PlayBeatButtonWidget({
    Key? key,
    this.onPlay,
    this.onStop,
  }) : super(key: key);
  @override
  _PauseBeatButtonWidgetState createState() => _PauseBeatButtonWidgetState();
}

class _PauseBeatButtonWidgetState extends State<PlayBeatButtonWidget> {
  late PlayButtonController controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final beat = BeatProvider.of(context).bloc;
    controller = PlayButtonController(
      beat: beat,
      onPlay: widget.onPlay,
      onStop: widget.onStop,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.active,
      builder: (BuildContext context, bool isPlaying, Widget? child) {
        return IconButton(
          iconSize: 64,
          onPressed: () => controller.onPressed(isPlaying),
          icon: Icon(
            isPlaying ? Icons.stop : Icons.play_arrow,
          ),
        );
      },
    );
  }
}
