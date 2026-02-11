import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:ecommerce_depi/feature/home/widget/item_card.dart';
import 'package:flutter/material.dart';

class GridViewForHome extends StatelessWidget {
  const GridViewForHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: offers.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        childAspectRatio: .7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => ItemCard(model: offers[index]),
    );
  }
}
