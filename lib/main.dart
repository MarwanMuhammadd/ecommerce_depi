import 'dart:io';
import 'package:ecommerce_depi/core/styles/themes.dart';
import 'package:ecommerce_depi/feature/intro/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      builder: (context, child) {
        return SafeArea(
          bottom: Platform.isAndroid ? true : false,
          top: false,
          child: child ?? Container(),
        );
      },
      home: SplashScreen(),
    );
  }
}
