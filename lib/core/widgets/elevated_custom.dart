import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ElevatedCustom extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double? width;
  final double? height;

  const ElevatedCustom({
    super.key,
    this.onPressed,
    required this.text,
    this.width = double.infinity,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(text, style: TextStyles.body.copyWith(color: Colors.white)),
      ),
    );
  }
}
