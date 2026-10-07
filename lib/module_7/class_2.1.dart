import 'package:flutter/material.dart';

class module7_class2_1 extends StatefulWidget {
  const module7_class2_1({super.key});

  @override
  State<module7_class2_1> createState() => _module7_class2_1State();
}

class _module7_class2_1State extends State<module7_class2_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        elevation: 12,
        shadowColor: Colors.black,
        leading: Text('No:1'),
        leadingWidth: 40,
    ),
  
    body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        ),
        itemCount: 6,
        itemBuilder: (context,index){
          return 
            Padding(padding: 
            EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4, 4),
                      blurRadius: 4)
                  ]
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 60,
                    right: 20,
                    bottom: 120,
                    child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/051/078/676/small/a-simple-black-t-shirt-suitable-for-casual-wear-showcasing-a-sleek-and-modern-design-with-a-comfortable-fit-png.png',)),

                    Padding(padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Up to 20% off',
                          style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Icon(Icons.favorite_outline_outlined,color: Colors.red,size: 40,),
                      ),

                      Positioned(
                        bottom: 60,
                        left: 10,
                        child: Container(
                              padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text('Half Sleeve T-Shirt For Man',style: 
                            TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                            ),
                        ),
                      ),

                               Positioned(
                                bottom: 20,
                                left: 10,
                                 child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Text('2199tk Only',style: 
                                    TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                  SizedBox(width: 10,),
                                  Text('1500tk',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough),)
                                                               ],
                                                             ),
                               ),
                        Positioned(
                          bottom: 30,
                          right: 10,
                          child: Icon(Icons.shopping_cart_outlined,size: 50,color: Colors.blue,))

                    
                ],
                
              ),
              
                        
                ),
                
            );
            
       },));


  }
}