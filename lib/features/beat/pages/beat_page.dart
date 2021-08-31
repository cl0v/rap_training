import 'package:flutter/material.dart';
import 'package:rap_training/features/beat/interfaces/beat_interface.dart';
import 'package:rap_training/features/beat/providers/beat_provider.dart';

//TODO: Corrigir bug da diferenca de status dos botoes pause,play e reload


class BeatPage extends StatelessWidget {
  final IBeat bloc;
  final Widget child;

  BeatPage({
    Key? key,
    required this.child,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BeatProvider(
      child: child,
      bloc: bloc,
    );
  }
}