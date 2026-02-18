import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final String id;
  final String? categoryId;
  final String image;
  final String name;
  final String price;
  final String quantityForPrice;
  final Widget? imageWidget;

  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.quantityForPrice,
    this.imageWidget,  this.categoryId,
  });
}

List<ProductModel> offers = [
  ProductModel(
    id: '1',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    name: 'Apple',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '2',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    name: 'Banana',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '3',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    name: 'Orange',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '4',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    name: 'Cabbage',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
];

List<ProductModel> bestSellingProducts = [
  ProductModel(
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    name: 'Orange',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    name: 'Cabbage',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    name: 'Apple',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    name: 'Banana',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
];

List<ProductModel> allProducts = [
 ProductModel(
    categoryId:"1" ,
    id: '1',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO_SbJ68qK4PToBxjI44HU_XG_loCMakwLHw&s',
    name: 'Orange',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    categoryId: "1",
    id: '2',
    image:
        'https://cdn.mafrservices.com/sys-master-root/hd7/h23/9342436540446/32603_main.jpg?im=Resize=376',
    name: 'Cabbage',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    categoryId: "1",
    id: '3',
    image: 'https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg',
    name: 'Apple',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    categoryId: "1",
    id: '4',
    image:
        'https://m.media-amazon.com/images/I/21ox-V+BgLL._AC_UF1000,1000_QL80_.jpg',
    name: 'Banana',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '1',
    image: AppImages.cocaDiet,
    categoryId: "5",
    name: 'coca Diet',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '2',
    name: 'Sprite',
    price: '\$10.99',
    categoryId: "5",
    image: AppImages.sprite,
    quantityForPrice: '1kg',
  ),
  ProductModel(
    image: AppImages.cocacola,
    categoryId: "5",
    id: '3',
    name: 'Cocacola',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '4',
    categoryId: "5",
    image: AppImages.treeTopOrange,
    name: 'Orange Juice',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),

  ProductModel(
    id: '6',
    image: AppImages.treeTopApple,
    categoryId: "5",
    name: 'Apple juice',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
  ProductModel(
    id: '5',
    image: AppImages.pepsi,
    categoryId: "5",
    name: 'pepsi',
    price: '\$10.99',
    quantityForPrice: '1kg',
  ),
];
