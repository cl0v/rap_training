
import 'package:flutter/material.dart';
import 'package:rap_training/pages/home_page.dart';
import 'package:rap_training/pages/singer_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
