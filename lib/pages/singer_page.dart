import 'package:flutter/material.dart';

import 'package:rap_training/controller/singer_controller.dart';

//TODO: Manter o inicio sincronizado, as vezes o audio pode atrasar
// TODO: Começar ambos ao mesmo tempo
class SingerPage extends StatefulWidget {
  final String songUrl;
  const SingerPage({
    Key? key,
    required this.songUrl,
  }) : super(key: key);

  @override
  _SingerPageState createState() => _SingerPageState();
}

class _SingerPageState extends State<SingerPage> {
  final controller = SinglerController();

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller.play(widget.songUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.black,
            ),
            onPressed: controller.restart,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: controller.lyric,
                builder: (BuildContext context, String value, Widget? child) {
                  return Text(
                    value,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                  );
                }),
            SizedBox(
              height: 32,
            ),
            ValueListenableBuilder(
                valueListenable: controller.pauseNotifier,
                builder: (BuildContext context, bool value, Widget? child) {
                  return IconButton(
                    onPressed: value ? controller.resume : controller.pause,
                    icon: Icon(
                      value ? Icons.play_arrow : Icons.pause,
                      size: 32,
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
