import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:ecommerce_depi/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_depi/feature/explore/widget/grid_view_for_explore.dart';

import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Find Products",
            style: TextStyles.subTitle.copyWith(fontSize: 18),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                hintText: "Search Store",
                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(height: 20),

              // GridView.builder(
              //   itemCount: offers.length,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //   ),
              //   itemBuilder: (context, index) => ItemCard(model: offers[index]),
              // ),
              GridViewForExplore(),
            ],
          ),
        ),
      ),
    );
  }
}
