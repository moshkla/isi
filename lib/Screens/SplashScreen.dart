import 'dart:async';

import 'package:flutter/material.dart';

import 'Intro/intro.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    _navigateToIntro(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }

  _navigateToIntro(BuildContext? context) {
    new Timer(const Duration(seconds: 5), () {
      Navigator.of(context!).pushReplacement(
          MaterialPageRoute(builder: (context) => IntroScreen()));
    });
  }
}
