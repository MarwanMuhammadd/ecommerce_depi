import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/feature/intro/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigations.navigationReplacement(context, WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(child: SvgPicture.asset(AppImages.logoSvg)),
    );
  }
}
