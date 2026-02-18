import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/feature/details/widget/counter.dart';
import 'package:flutter/material.dart';

class CartItemAdded extends StatelessWidget {
  const CartItemAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                child: Image.asset(AppImages.cocacola, height: 70, width: 50),
              ),
            ],
          ),
          // SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 90.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cocacola",
                  style: TextStyles.subTitle.copyWith(fontSize: 18),
                ),
                Text("1L", style: TextStyle(color: AppColors.greyColor)),
                Counter(),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                icon: Icon(Icons.close, color: AppColors.greyColor),
              ),
              SizedBox(height: 30),
              Text("\$4.99", style: TextStyles.subTitle.copyWith(fontSize: 17)),
            ],
          ),
        ],
      ),
    );
  }
}
