import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() {
    debugPrint('========== تطبيق FlutterIDE يبدأ ==========');
    runApp(MyApp());
  }, (error, stackTrace) {
    debugPrint('========== خطأ غير متوقع ==========');
    debugPrint('Error: ' + error.toString());
    debugPrint('StackTrace: ' + stackTrace.toString());
  });
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('تم بناء MyApp');
    return MaterialApp(
      title: 'Lllll',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lllll'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
