import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/feature/auth/page/otp_screen.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              "Enter your mobile number",
              style: TextStyles.subTitle.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.blackNormal,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "We need to verify you. We will send you a one time verification code.",
              style: TextStyles.caption.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 40),
            CustomTextFormField(
              hintText: "01xxxxxxxxxxx",
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 40),
            ElevatedCustom(
              text: "Next",
              onPressed: () {
                Navigations.naviagationPush(context, OtpScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
