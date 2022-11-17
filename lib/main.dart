import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/screens/calls/calls_screen.dart';
import 'package:task/screens/first_screen/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );

  }
}
