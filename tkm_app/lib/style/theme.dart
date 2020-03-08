import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();

  static const Color loginGradientStart = const Color.fromARGB(0, 255, 255, 255);
  static const Color loginGradientEnd = const Color.fromARGB(-61, 70, 213,50);
  static const Color loginButton = const Color.fromARGB(0, 30,144,255);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}