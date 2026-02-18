import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/feature/favorite/widget/favorited_item.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Favourite", style: TextStyles.subTitle),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 15,
          itemBuilder: (context, index) => FavoritedItem(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
        child: ElevatedCustom(text: "Add All To Cart", onPressed: () {}),
      ),
    );
  }
}
