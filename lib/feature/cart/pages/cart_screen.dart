import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/feature/cart/widget/cart_item_added.dart';
import 'package:ecommerce_depi/feature/cart/widget/checkout_model_bottom_sheet.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        // backgroundColor: AppColors.accentGreen,
        title: Text("My Cart", style: TextStyles.subTitle),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return CartItemAdded();
        },
        separatorBuilder: (context, index) {
          return Divider(indent: 20, endIndent: 20);
        },
        itemCount: 15,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
        child: ElevatedCustom(
          text: "Go to Checkout",
          onPressed: () {
            checkoutModalBottomSheet(context);
          },
        ),
      ),
    );
  }
}
