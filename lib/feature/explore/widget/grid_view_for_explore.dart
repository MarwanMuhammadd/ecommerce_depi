import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/feature/explore/data/dummy_data_explore.dart';
import 'package:ecommerce_depi/feature/explore/data/dummy_data_for_categories.dart';
import 'package:ecommerce_depi/feature/explore/page/category.dart';
import 'package:ecommerce_depi/feature/explore/widget/item_card_explore.dart';
import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:flutter/material.dart';

class GridViewForExplore extends StatefulWidget {
  const GridViewForExplore({super.key});

  @override
  State<GridViewForExplore> createState() => _GridViewForExploreState();
}

class _GridViewForExploreState extends State<GridViewForExplore> {
  List<ProductModel> getItemFormCategory(String realcategoryId) {
    return allProducts
        .where((product) => product.categoryId == realcategoryId)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: exploreItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        childAspectRatio: .75,
        crossAxisCount: 2,
      ),
      itemBuilder:
          (context, index) => InkWell(
            onTap: () {
              final filteredProducts = getItemFormCategory(
                exploreItems[index].id,
              );
              Navigations.naviagationPush(
                context,
                Category(
                  filteredProducts: filteredProducts,
                  categoryName: exploreItems[index].name,
                ),
              );
            },
            child: ItemCardExplore(dummyDataExplore: exploreItems[index]),
          ),
    );
  }
}
