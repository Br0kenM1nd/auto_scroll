import 'dart:io';

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class TextFileViewer extends StatefulWidget {
  final String filePath;

  const TextFileViewer({Key? key, required this.filePath}) : super(key: key);

  @override
  State<TextFileViewer> createState() => _TextFileViewerState();
}

class _TextFileViewerState extends State<TextFileViewer> {
  List<String> _fileLines = [];

  @override
  void initState() {
    super.initState();
    // Чтение файла при инициализации состояния
    _readFile();
  }

  Future<void> _readFile() async {
    // Чтение файла по пути, переданному в качестве аргумента
    String fileContents = await File(widget.filePath).readAsString();
    // Разбиение содержимого файла на строки
    _fileLines = fileContents.split('\n');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Viewer'),
      ),
      body: ListView.builder(
        itemCount: _fileLines.length,
        itemBuilder: (BuildContext context, int index) {
          // Использование MarqueeText для создания автоматически прокручиваемого текста
          return Marquee(
            text: _fileLines[index],
            style: TextStyle(fontSize: 18),
            velocity: 30,
            blankSpace: 100,
            pauseAfterRound: Duration(seconds: 1),
            startPadding: 10,
          );
        },
      ),
    );
  }
}