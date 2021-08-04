import 'package:flutter/material.dart';
import 'package:rap_training/features/lyrics/interfaces/lyric_player_interface.dart';

class LyricsProvider extends InheritedWidget {
  LyricsProvider({required Widget child, required this.bloc})
      : super(child: child);

  final ILyricPlayer bloc;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static LyricsProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LyricsProvider>()!;
  }
}
