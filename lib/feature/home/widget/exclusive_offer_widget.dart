import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:ecommerce_depi/feature/home/widget/item_card.dart';
import 'package:flutter/material.dart';

class ExclusiveOfferWidget extends StatelessWidget {
  const ExclusiveOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: offers.length,
        itemBuilder:
            (context, index) => SizedBox(
              height: 120,
              width: 160,
              child: ItemCard(model: offers[index]),
            ),
      ),
    );
  }
}
