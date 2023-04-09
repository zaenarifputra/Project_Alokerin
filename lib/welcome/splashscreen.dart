import 'package:alokerin/welcome/welcome_screen.dart';
import 'package:alokerin/utils/styles.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.onPrimaryColor,
      body: Center(
          child: Image.asset(
            "assets/images/logo_splash.png",
            height: 130,
            width: 130,
          )),
    );
  }
}
