import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/core/widgets/password_text_feild_form.dart';
import 'package:ecommerce_depi/feature/auth/page/login_screen.dart';
import 'package:ecommerce_depi/main/main_app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  final _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Center(child: SvgPicture.asset(AppImages.carrotSvg)),
                SizedBox(height: 40),
                Text(
                  "Sign Up",
                  style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 12),

                Text(
                  "Enter your credentails to continue",
                  style: TextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 45),

                Text(
                  "Name",
                  style: TextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CustomTextFormField(
                  hintText: "Enter your name",
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                Text(
                  "Email",
                  style: TextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CustomTextFormField(
                  hintText: "Enter your Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                Text(
                  "Password",
                  style: TextStyles.caption.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                PasswordTextFeildForm(
                  hintText: "***********",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                ElevatedCustom(
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      Navigations.naviagationPush(context, MainAppScreen());
                    }
                  },
                  text: "Sign Up",
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyles.small.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero, // يشيل أقل حجم
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        textStyle: TextStyles.small.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        Navigations.navigationReplacement(
                          context,
                          LoginScreen(),
                        );
                      },
                      child: Text(
                        " Login",
                        style: TextStyles.small.copyWith(
                          fontWeight: FontWeight.w600,
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
    );
  }
}
