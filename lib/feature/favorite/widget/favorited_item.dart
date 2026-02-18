import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class FavoritedItem extends StatelessWidget {
  const FavoritedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(AppImages.cocaDiet, width: 50, height: 50),
      title: Text("cocacola diet", style: TextStyles.body),
      subtitle: Text("325ml, price"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "\$1.50",
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
          Icon(Icons.chevron_right, fontWeight: FontWeight.w600),
        ],
      ),
    );
  }
}
