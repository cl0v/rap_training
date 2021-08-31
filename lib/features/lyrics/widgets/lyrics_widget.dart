import 'package:flutter/material.dart';
import 'package:rap_training/features/lyrics/providers/lyrics_provider.dart';

class LyricsWidget extends StatelessWidget {
  LyricsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = LyricsProvider.of(context).bloc;
    return ValueListenableBuilder(
      valueListenable: bloc.notifier,
      builder: (BuildContext context, String value, Widget? child) {
        return Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
        );
      },
    );
  }
}
