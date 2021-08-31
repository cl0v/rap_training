import 'package:flutter/material.dart';
import 'package:rap_training/features/lyrics/interfaces/lyric_player_interface.dart';
import 'package:rap_training/features/lyrics/providers/lyrics_provider.dart';

class LyricsPage extends StatelessWidget {
  final Widget child;
  final ILyricPlayer bloc;

  const LyricsPage({
    Key? key,
    required this.child,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LyricsProvider(
      child: child,
      bloc: bloc,
    );
  }
}