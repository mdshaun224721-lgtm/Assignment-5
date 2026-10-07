import 'package:flutter/material.dart';

class module7_class2 extends StatefulWidget {
  const module7_class2({super.key});

  @override
  State<module7_class2> createState() => _module7_class2State();
}

class _module7_class2State extends State<module7_class2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple',
        style: TextStyle(
          color: Colors.blue,
          backgroundColor: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          titleSpacing: 40,
          centerTitle: false,
          toolbarHeight: 70,
          toolbarOpacity: 1,
          elevation: 10,
          shadowColor: Colors.blue,
          animateColor: true, 
          leading:  Text('no:1',
            style: TextStyle(
              color: Colors.blue,
              backgroundColor: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w800,          
            ),          
          ),
          leadingWidth: 50,        
          actions: [
            IconButton(onPressed: (){},icon: Icon(Icons.settings,size: 40,fontWeight:FontWeight.w800)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 40,fontWeight: FontWeight.w800)),
            IconButton(onPressed: (){}, icon: Icon(Icons.email,size: 40,fontWeight: FontWeight.w800,)),
          ],       
      ),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
               Center(
                 child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.red,width: 2),
                      boxShadow: [
                        BoxShadow(color: Colors.black,
                        offset: Offset(10, 10),
                        blurRadius: 20,                 
                        ),
                      ],
                    ),      
                    padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                    alignment: Alignment.center,
                     child:
                        Image.asset('assets/apple.jpg',
                         height: 100,
                         width: 100,)                   
                     ),
               ),  
                
                SizedBox(height: 20,),
          
                Stack(
                 alignment: Alignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      color: Colors.red,
                    ),
                    Positioned(
                      top: 50,
                      bottom: 50,
                      left: 50,
                      right: 50,
          
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.blue,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      bottom: 10,
                    
                      child: Container(
                          height: 50,
                          width: 100,
                          color: Colors.green,
                        ),
                    ),
                    
                  ],
                ),
        
        
        
          
                SizedBox(height: 20,),
                Container(
                  height: 550,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(10, 10,),
                        blurRadius: 10)
                    ]
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 25,
                        left: 25,
                        bottom: 60,
                        child: Center(
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgBkbgaOkNsjaz86Bi1zPEN8YXKxiovHWK0IOC8_onEWqO7Wzl70N4FRpq&s=10',
                        ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),                   
                          child: Text('30% off',style: TextStyle(fontSize: 20,color: Colors.white),),                      
                          ),
                        ),
                        Positioned(  
                          top: 10,         
                          right: 10,
                          child: Icon(Icons.favorite_border_outlined,size: 50,color: Colors.red,),
                          ),
                                             
                       Positioned(
                        right: 10,
                        bottom: 10,
                         child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.shopify_sharp,color: Colors.white,size: 35,),
                         ),
                       ) ,
        
                       Positioned(
                        left: 10,
                        bottom: 50,
                         child: Column(
                          children: [
                            Text('AirPods Pro 3rd gen',
                            style: TextStyle(color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),)
                          ],
                         ),
                       ),
          
                       Positioned(
                        left: 10,
                        bottom: 10,
                         child: Row(
                          children: [
                            Text('1900tk',style: 
                            TextStyle(color: Colors.red,
                            fontSize: 30),),
                            SizedBox(width: 10,),
                            Text('1400tk',style: 
                            TextStyle(color: Colors.black,
                            fontSize: 25,
                            decoration: TextDecoration.lineThrough)),
                          ],
                         ),
                       )
                      
                    ],
                  ),
                  
                  
                )
          
                
            
            ],
          
          ),
        ),
      ),

    );
  }
}