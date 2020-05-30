import 'package:flutter/material.dart';
import 'package:food/screens/details/details_screen.dart';
import 'package:food/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Amburgue & Bebida",
            shopName: "Mercearia do Zezim",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "Amburgue & Bebida",
            shopName: "Chiquilim",
            press: () {},
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Tudo",
            shopName: "Mercadão ",
            press: () {},
          ),
        ],
      ),
    );
  }
}
