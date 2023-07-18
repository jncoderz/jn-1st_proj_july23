import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartItemSamples extends StatelessWidget {
  const cartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i=1; i<4; i++ )
        Container(margin: EdgeInsets.all(10),padding: EdgeInsets.all(10),
          height: 110,decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
            Radio(value: "", groupValue: "", onChanged: (context){}),
          
          Container(margin: EdgeInsets.all(10),
            height: 80,width: 80,child: Image.asset("assets/images/$i.png"),
            ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Product title",
            style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.cyan),), Text("\$5.00",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.cyan),
              ),

          ],),
            Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
              
              Icon(Icons.delete_outline,color: Colors.cyan,),
           
           Spacer(),
            Row(
              children: [
              Icon(CupertinoIcons.minus_circle_fill,color: Colors.cyan),
 
 Container(margin: EdgeInsets.symmetric(horizontal: 10),
              
              child: Text("0"),),
              Icon(CupertinoIcons.plus_circle_fill,color: Colors.cyan,)
            ],)
            ],),
          )
          ]),

          ),

      ],
    );
  }
}