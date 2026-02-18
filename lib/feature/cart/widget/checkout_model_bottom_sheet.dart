import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/feature/cart/pages/order_done.dart';
import 'package:flutter/material.dart';

void checkoutModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => CheckoutDetails(),
  );
}

class CheckoutDetails extends StatelessWidget {
  const CheckoutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Details(
            text: Text("Checkout", style: TextStyles.subTitle),
            icon: Icons.close,
          ),
          Details(
            text: Text(
              "Delivery",
              style: TextStyles.subTitle.copyWith(color: AppColors.greyColor),
            ),
            label: Text(
              "Select Method",
              style: TextStyles.subTitle.copyWith(fontSize: 16),
            ),
            icon: Icons.chevron_right,
          ),
          Details(
            text: Text(
              "Promo Code",
              style: TextStyles.subTitle.copyWith(color: AppColors.greyColor),
            ),
            label: Image.asset(AppImages.pepsi, height: 50, width: 50),
            icon: Icons.chevron_right,
          ),
          Details(
            text: Text(
              "Total Cost",
              style: TextStyles.subTitle.copyWith(color: AppColors.greyColor),
            ),
            label: Text(
              "\$14",
              style: TextStyles.subTitle.copyWith(fontSize: 16),
            ),
            icon: Icons.chevron_right,
          ),
          Text.rich(
            TextSpan(
              text: "By placing an order you agree to our ",
              style: TextStyles.caption.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ), // ال style الأساسي
              children: [
                TextSpan(
                  text: "Terms ",
                  style: TextStyles.caption.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  ),
                ),
                TextSpan(
                  text: "And ",
                  style: TextStyles.caption.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: "Conditions",
                  style: TextStyles.caption.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedCustom(
              text: "Place Order",
              onPressed: () {
                Navigations.naviagationPush(context, OrderDone());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  final Widget text;
  final Widget? label;
  final IconData icon;

  const Details({
    super.key,
    required this.text,
    this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            text,
            Spacer(),
            label ?? SizedBox(),
            Icon(icon, fontWeight: FontWeight.w600),
          ],
        ),
        SizedBox(height: 10),
        Divider(),
      ],
    );
  }
}
