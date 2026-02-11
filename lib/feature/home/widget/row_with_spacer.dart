import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class RowWithSpacer extends StatelessWidget {
  final String label;
  final String text;
  const RowWithSpacer({super.key, required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyles.subTitle.copyWith(color: AppColors.blackColor),
        ),
        Spacer(),
        InkWell(
          onTap: () {},
          child: Text(
            text,
            style: TextStyles.caption.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
