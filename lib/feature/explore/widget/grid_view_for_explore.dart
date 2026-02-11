import 'package:ecommerce_depi/feature/explore/data/dummy_data_explore.dart';
import 'package:ecommerce_depi/feature/explore/widget/item_card_explore.dart';
import 'package:flutter/material.dart';

class GridViewForExplore extends StatelessWidget {
  const GridViewForExplore({super.key});

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
          (context, index) =>
              ItemCardExplore(dummyDataExplore: exploreItems[index]),
    );
  }
}
