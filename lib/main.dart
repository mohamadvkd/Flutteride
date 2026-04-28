import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() {
    runApp(MyApp());
  }, (error, stackTrace) {
    final log = 'ERROR: ' + error.toString() + '\n\n'
      'STACKTRACE: ' + stackTrace.toString() + '\n\n'
      'TIME: ' + DateTime.now().toString() + '\n';
    try {
      final dir = Directory('/data/data/Mx.oem.dow/files');
      if (!dir.existsSync()) dir.createSync(recursive: true);
      File(dir.path + '/flutter_error_log.txt').writeAsStringSync(log);
    } catch (_) {
      try {
        final dir2 = Directory('/storage/emulated/0/Documents');
        if (!dir2.existsSync()) dir2.createSync(recursive: true);
        File(dir2.path + '/flutter_error_log.txt').writeAsStringSync(log);
      } catch (_) {}
    }
  });
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ma'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
