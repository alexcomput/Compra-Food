import 'package:flutter/material.dart';
import 'package:food/components/button_nav_bar.dart';
import 'package:food/screens/home/components/app_bar.dart';
import 'package:food/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      bottomNavigationBar: ButtonNavBar(),
      body: Body(),
    );
  }
}
