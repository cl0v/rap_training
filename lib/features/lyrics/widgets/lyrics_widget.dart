import 'package:flutter/material.dart';
import 'package:rap_training/features/lyrics/services/lyrics_service.dart';

class LyricsWidget extends StatelessWidget {
  final List<String> wordList;
  LyricsWidget({Key? key, required this.wordList}) : super(key: key);

   LyricsService get service => LyricsService(wordList: wordList);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: service.notifier,
        builder: (BuildContext context, String value, Widget? child) {
          return Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
          );
        });
  }
}
