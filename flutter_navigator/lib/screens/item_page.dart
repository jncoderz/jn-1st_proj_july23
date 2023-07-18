import 'package:flutter/material.dart';
import 'package:flutter_navigator/widgets/item_app_bar.dart';
import 'package:flutter_navigator/widgets/item_bottom_nav_bar.dart';



class itemPage extends StatelessWidget {
 itemPage({super.key});

List<Color> clrs=[
Colors.black,
Colors.blue,
Colors.green,
Colors.red,
Colors.orange];
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [
      const itemAppBar(),

      Image.asset("assets/images/1.png",height: 200,),
    Container(margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
      height: 180,width: double.infinity,color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceAround,
      
        children: [
          const Text("Product Title",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.cyan),
          ),
          const Text("This Sandal made by soft leather, very comfortable wear to use,This Sandal made by soft leather,",
          ),

          Row(children: [
            const Text("Size:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.cyan),),
            const SizedBox(width: 20,),
            
            Row(
              children: [
                for(int i=5;i<10;i++)
                Container(margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 20,width: 20,decoration:BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                   boxShadow:[ BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    ),]
                  ),
child: Text(i.toString(),style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.cyan),
),
                ),
              ],
            ),
          ],),
        
        Row(children: [
            const Text("Color:",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.cyan),),
            const SizedBox(width: 20,),
            
            Row(
              children: [
                for(int i=0;i<5;i++)
                Container(margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 20,width: 20,decoration:BoxDecoration(
                    color: clrs[i],
                    borderRadius: BorderRadius.circular(20),
                   boxShadow:[ BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    ),]
                  ),

                ),
              ],
            ),
          ],),
        
        ],
        
      ),
      
      ),
    
    ]),
    bottomNavigationBar: const itemBottomNavBar(),
    );
  }
}