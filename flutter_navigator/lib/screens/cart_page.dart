import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator/widgets/cart_app_bar.dart';
import 'package:flutter_navigator/widgets/cart_bottom_nav_bar.dart';
import 'package:flutter_navigator/widgets/cart_item_samples.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        cartAppBar(),

Container(height: 700,

child: Column(
  children: [
        cartItemSamples(),
  Container(child: Row(children: [
Icon(CupertinoIcons.plus_circle_fill),
Text("Add Coupon Code"),

  ],),)
  ],
),


),

      ],),
    bottomNavigationBar: cartBottomNavBar(),
    );
  }
}