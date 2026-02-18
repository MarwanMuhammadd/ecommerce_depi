import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(onTap: () {}, child: Icon(Icons.remove)),
        SizedBox(width: 12),
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.blackNormal),
          ),
          child: Center(child: Text(1.toString())),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
