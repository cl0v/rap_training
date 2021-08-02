import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class BeatRegisterPage extends StatefulWidget {
  const BeatRegisterPage({Key? key}) : super(key: key);

  @override
  _BeatRegisterPageState createState() => _BeatRegisterPageState();
}

class _BeatRegisterPageState extends State<BeatRegisterPage> {


  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: 'Titulo'),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.upload))
        ],
      ),
    );
  }
}
