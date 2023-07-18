import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class itemBottomNavBar extends StatelessWidget {
  const itemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(child: Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
height: 50,

decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
  spreadRadius: 3,
  blurRadius: 10,
  offset: Offset(0, 3),
  ),]
  ),
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [Text("\$ 5.00",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.cyan),
  ),
  
  ElevatedButton.icon(
    onPressed: (){}, icon: Icon(CupertinoIcons.cart_badge_plus,color: Colors.white,), label: Text("Add to Cart",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white)
    ),
  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.cyan)),
  ),
  ]),

    ));
  }
}