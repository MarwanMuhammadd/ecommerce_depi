import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final double? height;
  final double? width;
  final ProductModel model;
  const ItemCard({super.key, this.height, this.width, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(8),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.backgroundColor,
        border: Border.all(color: AppColors.blackNormal),
        boxShadow: [
          BoxShadow(color: AppColors.blackNormal, offset: Offset(2, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.network(
                height: height ?? 120,
                width: width ?? 140,
                model.image,
              ),
            ),
          ),
          Text(model.name, style: TextStyles.body),
          SizedBox(height: 8),
          Text(
            model.quantityForPrice,
            style: TextStyles.small.copyWith(color: AppColors.greyColor),
          ),
          SizedBox(height: 18),
          Row(
            children: [
              Text(model.price, style: TextStyles.body),
              Spacer(),
              FloatingActionButton.small(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: AppColors.accentGrey,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
