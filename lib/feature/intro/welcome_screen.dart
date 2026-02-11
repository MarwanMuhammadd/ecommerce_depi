import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/feature/auth/page/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.background,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 75,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImages.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColors.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "WELCOME\n TO OUR STORE",
                  textAlign: TextAlign.center,
                  style: TextStyles.headLine.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Get your groceries in as fast as one hour",
                  style: TextStyles.body.copyWith(color: AppColors.greyColor),
                ),
                SizedBox(height: 20),

                ElevatedCustom(
                  onPressed: () {
                    Navigations.navigationReplacement(context, LoginScreen());
                  },
                  text: "Get Started",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
