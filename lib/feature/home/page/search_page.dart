import 'package:ecommerce_depi/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:ecommerce_depi/feature/home/widget/item_card.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ProductModel> filterdItems = [];
  void filterdProducts(String nameItem) {
    setState(() {
    if (nameItem.isEmpty) {
      filterdItems = []; 
    } else {
      filterdItems = allProducts
          .where((product) =>
              product.name.toLowerCase().contains(nameItem.toLowerCase()))
          .toList();
    }
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32),
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.chevron_left),
                  ),
                  SizedBox(width: 16),
                  SizedBox(
                    width: 320,
                    child: CustomTextFormField(
                      onChanged: (v) {
                        filterdProducts(v);
                      },
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search here",
                    ),
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filterdItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(model: filterdItems[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
