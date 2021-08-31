import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final VoidCallback? onTap;

  const StartButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.blue, // Button color
        child: InkWell(
          splashColor: Colors.blueAccent, // Splash color
          onTap: onTap,
          child: SizedBox(
              width: 56 * 2,
              height: 56 * 2,
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 56,
              )),
        ),
      ),
    );
  }
}
