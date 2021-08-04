import 'package:flutter/material.dart';

import 'package:rap_training/features/beat/controller/pause_button_controller.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';

// TODO:Esse cara é quase identico ao outro, so muda as funcoes e os icones,
// tornar um widget global?

class PauseBeatButtonWidget extends StatefulWidget {
  final bool? forcedValue;
  final bool enabled;
  final VoidCallback? onResume;
  final VoidCallback? onPause;

  const PauseBeatButtonWidget({
    Key? key,
    required this.enabled,
    this.forcedValue,
    this.onResume,
    this.onPause,
  }) : super(key: key);
  @override
  _PauseBeatButtonWidgetState createState() => _PauseBeatButtonWidgetState();
}

class _PauseBeatButtonWidgetState extends State<PauseBeatButtonWidget> {
  late PauseButtonController controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final beat = BeatProvider.of(context).bloc;

    controller = PauseButtonController(
      beat: beat,
      onResume: widget.onResume,
      onPause: widget.onPause,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.active,
      builder: (BuildContext context, bool value, Widget? child) {
        return IconButton(
          iconSize: 64,
          onPressed: widget.enabled ? () => controller.onPressed(value) : null,
          icon: Icon(
            (widget.forcedValue ?? value) ? Icons.pause : Icons.play_arrow,
          ),
        );
      },
    );
  }
}
