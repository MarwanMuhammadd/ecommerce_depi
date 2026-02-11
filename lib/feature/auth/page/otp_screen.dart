import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1),

              Text(
                "Enter verification code",
                style: TextStyles.title.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackNormal,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We have sent SMS to: 01xxxxxxxxx",
                style: TextStyles.caption,
              ),
              SizedBox(height: 32),
              Center(
                child: Pinput(
                  keyboardType: TextInputType.number,
                  length: 5,
                  onCompleted: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Text(
                      "Resend OTP",
                      style: TextStyles.caption.copyWith(
                        color: AppColors.lightOrangeColor,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "change phone number",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.blackNormal,
                    ),
                  ),
                  SizedBox(height: 27),
                ],
              ),
              SizedBox(height: 32),

              ElevatedCustom(
                text: "Confirm",
                onPressed: () {
                  Navigations.naviagationPush(context, OtpScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
