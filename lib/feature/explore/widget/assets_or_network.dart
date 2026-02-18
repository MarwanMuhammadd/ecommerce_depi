import 'package:ecommerce_depi/feature/home/data/dummy_data.dart';
import 'package:flutter/material.dart';

class AssetsOrNetwork extends StatelessWidget {
  const AssetsOrNetwork({
    super.key,
    required this.model,
     this.height,
     this.width,
  });

  final ProductModel model;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          model.image.startsWith('http')
              ? Image.network(
                model.image,
                height: height ?? 120,
                width: width ?? 140,
                fit: BoxFit.contain,
              )
              : Image.asset(
                model.image,
                height: height ?? 120,
                width: width ?? 140,
                fit: BoxFit.contain,
              ),
    );
  }
}
