import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoffz/SignInPage.dart';
import 'package:shoffz/SignUpPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignInPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Image.asset("assets/background2.jpg"),
      // child: FlutterLogo(size: MediaQuery.of(context).size.height),
    );
  }
}
