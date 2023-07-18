import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator/widgets/categories_widget.dart';
import 'package:flutter_navigator/widgets/item_widgets.dart';



class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      
      elevation: 0.0,
      title: Text("DP Shop"),
      leading: Icon(Icons.sort),
    actions: [
      Container(height: 30,width: 30,
      child: Column(
        children: [
        Container(height: 15,width: 15,decoration: BoxDecoration(color: Colors.amber,shape: BoxShape.circle,),child: Text("3",textAlign: TextAlign.center,style:TextStyle(),
        ),
        
        ),
        
         InkWell(onTap: (){
          Navigator.pushNamed(context, "cartPage");
         },
         child: Icon(Icons.shopping_cart,),
         ),
      ],),
      ),
      ],),
    
    
    body: ListView(children: [
       Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(4.0),
             child: Column(
               children: [
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(height: 30,width:400,
                     decoration: BoxDecoration(
                      color: Colors.white,
                     borderRadius: BorderRadius.circular(20)
      ),
                       child: TextFormField(
                         decoration: InputDecoration(border: InputBorder.none,
                           hintText: "Search",
                           prefixIcon: Padding(
                             padding: const EdgeInsets.all(4.0),
                             child: Row(
                               children: [
                                 Icon(Icons.search),
                                 Spacer(),
                                 Icon(Icons.camera_alt),
      ],),
      ),
      ),
      ),
      ),
      
      ],),
      
      Padding(
       padding: const EdgeInsets.all(4.0),
       child:   Container(height: 20,
       alignment: Alignment.centerLeft,
       
       child: Text("Categories",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue
      ),
       ),
       
       ),
      
      ),
       const categoriesWidget(),
      
       
       Padding(
       padding: const EdgeInsets.all(4.0),
       child:   Container(
         height: 20,
       alignment: Alignment.centerLeft,
       
       child: Text("Best Selling",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blue
      ),
       ),
       
       ),
      
      ),
      itemWidgets(),
       ],
      ),
      
      ),
      
      ],),
    ]
    ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.blue.shade900,
      onTap: (index){},
      
    items: const <BottomNavigationBarItem>[
      
      BottomNavigationBarItem(
        icon: Icon(Icons.home,color: Colors.white,),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.cart_fill,color: Colors.white,),
        label: 'Sesrch',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.list,color: Colors.white,),
        label: 'Chats',
      ),
    


      
    ] )

  
      
      );
    
}
}