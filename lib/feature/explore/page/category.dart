import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/feature/explore/data/dummy_data_for_categories.dart';
import 'package:ecommerce_depi/feature/explore/widget/item_card_categories.dart';
import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category extends StatelessWidget {
  final List<ProductModel> filteredProducts;
  final String categoryName;
  const Category({
    super.key,
    required this.filteredProducts,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(categoryName)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.settingSvg),
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: filteredProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return ItemCardCategories(model: filteredProducts[index]);
        },
      ),
    );
  }
}
