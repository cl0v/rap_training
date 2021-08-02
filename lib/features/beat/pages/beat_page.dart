import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';

class BeatPage extends StatelessWidget {
  final IBeat beat;
  final Widget child;

  BeatPage({
    Key? key,
    required this.child,
    required this.beat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BeatProvider(
      child: child,
      beat: beat,
    );
  }
}
