import 'package:flutter/material.dart';

class cartAppBar extends StatelessWidget {
  const cartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(20),
      child: Row(children: [
        InkWell(onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios,
        color: Colors.cyan,),
        ),
        Text("Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyan),),
      Spacer(),
      Icon(Icons.more_vert,
        color: Colors.cyan,),
        
      ],),
      



    );
    
  }
}