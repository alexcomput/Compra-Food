import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:food/screens/details/components/body.dart';
import 'package:food/screens/details/components/details_app_bar.dart';
import 'package:food/screens/details/components/item_image.dart';
import 'package:food/screens/details/components/item_info.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
