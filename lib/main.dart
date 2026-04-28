import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  print('===== main() بدأ =====');
  try {
    runApp(MyApp());
    print('===== runApp() نجح =====');
  } catch (e) {
    print('===== خطأ في runApp =====');
    print(e.toString());
    try {
      final dir = Directory('/data/data/Fjfj.ckck.fkckf/files');
      if (!dir.existsSync()) dir.createSync(recursive: true);
      File(dir.path + '/flutter_error_log.txt').writeAsStringSync(
        'ERROR in runApp: ' + e.toString() + '\n'
        'TIME: ' + DateTime.now().toString() + '\n'
      );
    } catch (_) {}
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('===== MyApp.build() =====');
    return MaterialApp(
      title: 'Fkfkfkf',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fkfkfkf'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
