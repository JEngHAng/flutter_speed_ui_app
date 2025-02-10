import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/home_ui.dart';

void main () {
  runApp(
    Flutterspeed(),
  );
}

class Flutterspeed extends StatefulWidget {
  const Flutterspeed({super.key});

  @override
  State<Flutterspeed> createState() => _FlutterspeedState();
}

class _FlutterspeedState extends State<Flutterspeed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
    );
  }
}