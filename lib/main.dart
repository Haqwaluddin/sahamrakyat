import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testsahamrakyat/soal_1/list_dropdown.dart';
import 'package:testsahamrakyat/soal_2/soal_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:
      // Soal1(),
        Soal2(),
    );
  }
}

