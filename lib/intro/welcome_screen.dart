import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
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
                  color: AppColors.backgroundColor,
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

                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: AppColors.primaryColor,
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyles.title.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
