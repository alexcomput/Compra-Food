import 'package:flutter/material.dart';
import 'package:food/screens/home/components/category_item.dart';


class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Lanches",
            press: () {},
            isActive: true,
          ),
          CategoryItem(
            title: "Pizza",
            press: () {},
            isActive: false,
          ),
          CategoryItem(
            title: "Almoço",
            press: () {},
            isActive: false,
          ),
          CategoryItem(
            title: "Janta",
            press: () {},
            isActive: false,
          ),
          CategoryItem(
            title: "Bebidas",
            press: () {},
            isActive: false,
          ),
          CategoryItem(
            title: "Frutas",
            press: () {},
            isActive: false,
          ),
        ],
      ),
    );
  }
}
