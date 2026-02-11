import 'package:flutter/material.dart';

class Navigations {
  static void navigationReplacement(BuildContext context, Widget newScreen) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => newScreen));
  }

  static void naviagationPush(BuildContext context, Widget newScreen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => newScreen));
  }
}
