import 'package:flutter/material.dart';
import 'package:flutter_navigator/screens/cart_page.dart';
import 'package:flutter_navigator/screens/home_page.dart';
import 'package:flutter_navigator/screens/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
  theme: ThemeData(
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.grey.shade300), 
  
  
  
   debugShowCheckedModeBanner: false,
  
      routes: {
      "/" : (context) => const homePage(),
      "cartPage" : (context) => const cartPage(),
      "itemPage" : (context) => itemPage()
  },
    );
  }
}


