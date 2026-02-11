import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class DummyDataExplore {
  final Widget image;
  final String id;
  final String name;
  final Color backGround;
  final Color borderColor;

  DummyDataExplore({
    required this.image,
    required this.name,
    required this.backGround,
    required this.borderColor,
    required this.id,
  });
}

List<DummyDataExplore> exploreItems = [
  DummyDataExplore(
    image: Image.asset(AppImages.fruits,),
    name: "Fresh Fruits & vegetables",
    backGround: AppColors.accentGreen,
    borderColor: AppColors.accentGreen,
    id: "1",
  ),
  DummyDataExplore(
    image: Image.asset(AppImages.oil, ),
    name: "Cooking Oil& Ghee",
    backGround: AppColors.lightOrangeColor,
    borderColor: AppColors.lightOrangeColor,
    id: "2",
  ),
  DummyDataExplore(
    image: Image.asset(AppImages.meat, ),
    name: "Meat & Fish",
    backGround: AppColors.lightOrangeColorAccent,
    borderColor: AppColors.lightOrangeColorAccent,
    id: "3",
  ),
  DummyDataExplore(
    image: Image.asset(AppImages.bakery, ),
    name: "Bakery & Snacks",
    backGround: AppColors.lightPurbleColorAccent,
    borderColor: AppColors.lightPurbleColorAccent,
    id: "4",
  ),
  DummyDataExplore(
    image: Image.asset(AppImages.dairy, ),
    name: "Dairy & Eggs",
    backGround: AppColors.lightYelloweColor,
    borderColor: AppColors.lightYelloweColor,
    id: "5",
  ),
  DummyDataExplore(
    image: Image.asset(AppImages.beverages, ),
    name: "Beverages",
    backGround: AppColors.lightBlueColor,
    borderColor: AppColors.lightBlueColor,
    id: "6",
  ),
];
