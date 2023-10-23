import 'package:flutter/material.dart';
import 'package:app_giup_viec/ButtomNavigation/Navitagion_App.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Navigation_App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

