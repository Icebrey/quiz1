import 'package:flutter/material.dart';
import 'package:quiz1/halaman_utama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: halaman_utama(),
    );
  }
}
