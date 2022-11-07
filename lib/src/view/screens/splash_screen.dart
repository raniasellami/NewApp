import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushNamed(
          "/OnBoarding",
        );
      },
    );
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: 48,
        height: 48,
        child: Image.asset(
          "assets/icon.png",
        ),
      ),
    );
  }
}
