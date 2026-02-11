import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/functions/navigations.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_depi/feature/home/page/search_page.dart';
import 'package:ecommerce_depi/feature/home/widget/best_selling_widget.dart';
import 'package:ecommerce_depi/feature/home/widget/exclusive_offer_widget.dart';
import 'package:ecommerce_depi/feature/home/widget/grid_view_for_home.dart';
import 'package:ecommerce_depi/feature/home/widget/row_with_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentGeometry.center,
            child: SvgPicture.asset(
              height: 42,
              AppImages.logoSvg,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                readOnly: true,
                onTap:
                    () => Navigations.naviagationPush(
                      context,
                      SearchPage(),
                    ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search for Products",
              ),
              SizedBox(height: 20),
              RowWithSpacer(label: "Exclusive Offer", text: "see all"),
              SizedBox(height: 10),
              ExclusiveOfferWidget(),
              SizedBox(height: 28),
              RowWithSpacer(label: "Best Selling", text: "See all"),
              SizedBox(height: 20),
              BestSellingWidget(),
              SizedBox(height: 28),
              RowWithSpacer(label: "All Items", text: "See all"),
              SizedBox(height: 20),
              GridViewForHome(),
            ],
          ),
        ),
      ),
    );
  }
}
