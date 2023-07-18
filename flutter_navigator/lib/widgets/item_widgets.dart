import 'package:flutter/material.dart';

class itemWidgets extends StatelessWidget {
  const itemWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10),
      height: 300,
      child: GridView.count(
        
        childAspectRatio: 0.68,
        crossAxisCount: 2,
      shrinkWrap: true,
    
      children: [
        for(int i=1; i<8; i++)
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
       color: Colors.white,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(height: 20,width: 40,
              decoration: BoxDecoration(color:Colors.blue,
                borderRadius: BorderRadius.circular(20)),
              child: Text("-50%",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),Icon(Icons.favorite_border_outlined,color: Colors.red,)
          ],),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "itemPage");
            },
            child: Container(
              
              child: Image.asset("assets/images/$i.png",height: 150,width: 150,),
              ),
          ),
          Container(child: Text("Product Title",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),
          ),
),
        Container(child: Text("Write description of Product",style: TextStyle(fontSize: 15),
          ),
          
),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text("\$5",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),
  ),
Icon(Icons.shopping_cart_checkout_outlined,color: Colors.blue,)
],),
        ],),
        ),],
      
      
      ),
    );
    
    
    
    
  }
}