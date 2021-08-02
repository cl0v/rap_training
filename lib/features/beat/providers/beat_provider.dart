import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';

class BeatProvider extends InheritedWidget {
  BeatProvider({required Widget child, required this.beat}) : super(child: child);
  final IBeat beat;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static BeatProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BeatProvider>();
  }
}
