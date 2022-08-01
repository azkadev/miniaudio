import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:miniaudio/miniaudio.dart';
import 'package:file_picker/file_picker.dart';

void main(List<String> args) {
  Audio audio = Audio("audio.so");
  audio.initIsolate();
  print("eo"); 
  runApp(MaterialApp(
    home: MyApp(
      audio: audio,
    ),
  ));
}

class MyApp extends StatefulWidget {
  final Audio audio;
  MyApp({Key? key, required this.audio}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("count: $count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {                                String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

          widget.audio.play("/sdcard/Music/y2mate.com - NCT U 엔시티 유 Universe Lets Play Ball MV.mp3");
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
