import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';

class BeatProvider extends InheritedWidget {
  BeatProvider({required Widget child, required this.bloc})
      : super(child: child);

  final IBeat bloc;

  @override
  bool updateShouldNotify(covariant BeatProvider oldWidget) => bloc != oldWidget.bloc;

  static BeatProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BeatProvider>()!;
    // TODO: Tratar a possibilidade de ser null aqui dentro
  }
}
