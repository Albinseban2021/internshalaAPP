import 'package:flutter/material.dart';
import 'package:internshala/home.dart';
import 'package:internshala/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internship App',
      home: SplashScreen(),
    );
  }
}
