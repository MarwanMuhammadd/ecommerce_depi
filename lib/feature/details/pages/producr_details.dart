import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:ecommerce_depi/feature/details/widget/counter.dart';
import 'package:ecommerce_depi/feature/details/widget/show_modal_bottom_sheet.dart';
import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProducrDetails extends StatelessWidget {
  final ProductModel product;
  const ProducrDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.whiteAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.cartSvg),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * .3,
              decoration: BoxDecoration(
                color: AppColors.whiteAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child:
                  product.image.startsWith('http')
                      ? Image.network(product.image, fit: BoxFit.contain)
                      : Image.asset(product.image, fit: BoxFit.contain),
            ),
            // SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text(product.name),
                    subtitle: Text(product.quantityForPrice),
                    trailing: IconButton(
                      style: IconButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.all(0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_rounded),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Counter(), Text(product.price)],
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(0),
                    childrenPadding: EdgeInsets.all(0),
                    title: Text("Product Detail"),
                    children: [
                      Text(
                        "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Reviews"),
                      Spacer(),
                      RatingBar.builder(
                        itemSize: 20,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder:
                            (context, _) =>
                                Icon(Icons.star, color: Colors.amber),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Icon(Icons.chevron_right_rounded),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
        child: ElevatedCustom(
          text: "Add to cart",
          onPressed: () {
            showModalBottom(context);
          },
        ),
      ),
    );
  }
}
