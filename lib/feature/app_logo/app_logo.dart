import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/forgot_password/forgot_password.dart';
import 'package:mate_vibes/feature/sign_up/sign_up.dart';

import '../../app_constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => SignUp()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/Vector.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image.asset('images/MateVibes.png'),
            ),
          ],
        ),
      ),
    );
  }
}
