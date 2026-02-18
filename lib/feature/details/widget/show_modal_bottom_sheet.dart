import 'package:ecommerce_depi/core/widgets/elevated_custom.dart';
import 'package:flutter/material.dart';

void showModalBottom(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    // isDismissible: false,
    // enableDrag: false,

    //useSafeArea: true,
    context: context,
    builder: (context) {
      return ContentModalBottomSheet();
    },
  );
}

class ContentModalBottomSheet extends StatelessWidget {
  const ContentModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text("Description"),
              Spacer(),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.close),
              ),
            ],
          ),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("product.name"),
            subtitle: Text("2\$"),
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

          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("product.name"),
            subtitle: Text("2\$"),
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
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("product.name"),
            subtitle: Text("2\$"),
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
          ElevatedCustom(text: "Next", onPressed: () {}),
        ],
      ),
    );
  }
}
