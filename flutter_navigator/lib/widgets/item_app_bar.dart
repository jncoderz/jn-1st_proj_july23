import 'package:flutter/material.dart';

class itemAppBar extends StatelessWidget {
  const itemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10),padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          InkWell(onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
          ),
          Text("Product"),Spacer(),
          Icon(Icons.favorite_border_outlined),
        ],
      ),
    );
  }
}