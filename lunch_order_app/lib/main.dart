import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/login_page.dart';
import 'pages/registration_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunch Order App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: LoginPage(),
    );
  }
}

