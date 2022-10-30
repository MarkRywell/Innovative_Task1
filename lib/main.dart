
import 'package:flutter/material.dart';
import 'package:innovative_task1/animated_splash_screen.dart';



void main() {
  runApp(const InnoTask());
}

class InnoTask extends StatelessWidget {
  const InnoTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: "Innovative Task App",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: const AnimationScreen()
    );
  }
}

