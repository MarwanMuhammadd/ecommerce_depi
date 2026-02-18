import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/feature/home/page/home_screen.dart';
import 'package:ecommerce_depi/main/main_app_screen.dart';
import 'package:flutter/material.dart';

class OrderDone extends StatelessWidget {
  const OrderDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(child: Image.asset(AppImages.orderAdded)),
            SizedBox(height: 60),
            Text(
              textAlign: TextAlign.center,
              "Your Order has been  \n accepted",
              style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              textAlign: TextAlign.center,
              "Your items has been placcd and is on \n it’s way to being processed",
              style: TextStyles.body.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 60),
            ElevatedCustom(
              text: "Go To Home",
              onPressed: () {
               Navigations.naviagationPush(context, MainAppScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
