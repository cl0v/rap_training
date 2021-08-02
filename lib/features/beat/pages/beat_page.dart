import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';
import 'package:rap_training/features/beat/services/beat_service.dart';

class BeatPage extends StatelessWidget {
  final AudioPlayer player;
  final Widget child;
  final String url;

  BeatPage({
    Key? key,
    required this.child,
    required this.player,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BeatProvider(
      child: child,
      beat: BeatService(
        audioUrl: url,
        audioPlayer: player,
      ),
    );
  }
}
