import 'package:flutter/material.dart';
import 'package:food/screens/details/components/item_image.dart';
import 'package:food/screens/details/components/item_info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}
