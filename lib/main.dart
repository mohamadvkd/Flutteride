import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() {
    runApp(MyApp());
  }, (error, stackTrace) {
    try {
      final dir = Directory('/storage/emulated/0/Download');
      if (!dir.existsSync()) dir.createSync(recursive: true);
      final file = File(dir.path + '/flutter_error_log.txt');
      final log = 'ERROR: ' + error.toString() + '\n\n'
        'STACKTRACE: ' + stackTrace.toString() + '\n\n'
        'TIME: ' + DateTime.now().toString() + '\n';
      file.writeAsStringSync(log);
    } catch (_) {}
  });
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Moh'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
