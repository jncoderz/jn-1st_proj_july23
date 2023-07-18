import 'package:flutter/material.dart';

class cartBottomNavBar extends StatelessWidget {
  const cartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(margin: EdgeInsets.all(8),padding: EdgeInsets.all(8),
        height: 100,
        child: Column(
children: [
  Row(
    children: [
      Text("Total",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.cyan),),
  Spacer(),
  Text("\$ 5.00",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.cyan),),
  ],),

Container(alignment: Alignment.center,
  margin: EdgeInsets.all(8),padding: EdgeInsets.all(8),
  width: double.infinity,height: 40,
  decoration: BoxDecoration(color: Colors.blue,
    borderRadius: BorderRadius.circular(20)
    ),
    child: Text("check Out",
    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),
    ),
  ),
],
      ),),
      
    );
  }
}