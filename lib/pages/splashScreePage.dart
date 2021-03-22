import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/pages/signInEmailNumberPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 6;
  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => SingInEmailPasswordPage()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Image.asset(
          SplashScreenLogo,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
