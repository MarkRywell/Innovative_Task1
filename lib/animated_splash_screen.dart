import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:innovative_task1/simpleapp.dart';


class AnimationScreen extends StatelessWidget {

  const AnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedSplashScreen(
        duration: 3000,
        splash: Container(
            alignment: Alignment.center,
            child: Image.asset('assets/logo/family.png'),
          ),
        nextScreen: const SimpleApp(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 200,
        backgroundColor: const Color(0xFF607D8B),


    );
  }
}
