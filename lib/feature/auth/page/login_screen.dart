import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/core/widgets/password_text_feild_form.dart';
import 'package:ecommerce_depi/feature/auth/page/number_screen.dart';
import 'package:ecommerce_depi/feature/auth/page/singup_screen.dart';
import 'package:ecommerce_depi/main/main_app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppImages.carrotSvg),
                  ),
                  SizedBox(height: 40),
                  Text("Login", style: TextStyles.subTitle),
                  SizedBox(height: 16),
                  Text(
                    "Enter your emails and password",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Email",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this feild is required";
                      }
                      return null;
                    },
                    hintText: "example@example.com",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Password",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  PasswordTextFeildForm(
                    hintText: "************",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this feild is required";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        textStyle: TextStyles.small.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        Navigations.naviagationPush(context, NumberScreen());
                      },
                      child: Text("Forgot Password?"),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedCustom(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        Navigations.naviagationPush(context, MainAppScreen());
                      }
                    },
                    text: "Login",
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyles.subTitle.copyWith(fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigations.navigationReplacement(
                            context,
                            SingupScreen(),
                          );
                        },
                        child: Text(
                          "Singup",
                          style: TextStyles.subTitle.copyWith(
                            fontSize: 12,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
