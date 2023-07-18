import 'package:flutter/material.dart';

class categoriesWidget extends StatelessWidget {
  const categoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
child: Row(
  children: [
    for (int i=1; i<8; i++)
        Container(margin: EdgeInsets.all(4),
          
         
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset("assets/images/$i.png",
            height: 20,width: 30,
            ),
            Text("sandal",style: TextStyle(fontSize: 10),),
          ],),
        ),  
      ),
  
  ],
),


    );
  }
}