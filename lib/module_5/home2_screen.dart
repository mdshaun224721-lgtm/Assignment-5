import 'package:flutter/material.dart';

class home2_screen extends StatelessWidget {
  const home2_screen({super.key});

  MySnackbar(value,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(value))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 0.7,
        elevation: 12,
        shadowColor: Colors.black,
        leading: Text('No:1'),
        leadingWidth: 40,
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: Icon(Icons.email)),

        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
                    
              Padding(padding: EdgeInsets.symmetric(
                   horizontal: 20,
                   vertical: 20),
                  //  child:ElevatedButton(onPressed: (){} child: Text('click')),
                child: ElevatedButton.icon(onPressed: (){MySnackbar('elevatedbutton', context);}, icon: Icon(Icons.ads_click_sharp),label: Text('click'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.yellow,width: 1)
                  ),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.green,
                  minimumSize: Size(double.infinity, 60),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20
                  ),                         
                )),
              ),
              SizedBox(height: 10),


              Padding(padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 0,
              ),        
                   child: OutlinedButton.icon(onPressed: (){MySnackbar('outlinebutton', context);}, label: Text('click on'),icon: Icon(Icons.ads_click_outlined),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.yellow,width: 2)
                      ),
                      foregroundColor: Colors.green,
                      elevation: 0,
                      shadowColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20
                      )
                    ),),
                  ),

                  SizedBox(height: 10),
                  
                  TextButton.icon(onPressed: (){MySnackbar('textbutton', context);}, label: Text('click here'),icon: Icon(Icons.text_fields),
                  style: TextButton.styleFrom(
                    minimumSize: Size(60, 40),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white
                  ),),
                  SizedBox(height: 10),

                 GestureDetector(
                  onTap: (){MySnackbar('ontap', context);},
                  onDoubleTap: (){MySnackbar('ondoubletap', context);},
                  onLongPress: (){MySnackbar('onlongpressed', context);},
                   child: Image.asset('assets/apple.jpg',
                   height: 200,
                   width: 200,
                   fit: BoxFit.fill,
                   ),
                 ),
                 SizedBox(height: 10,),

                  InkWell(
                    onTap: (){MySnackbar('ontap1', context);},
                    onDoubleTap: (){MySnackbar('ondoubletap1', context);},
                    onLongPress: (){MySnackbar('onlongpressed1', context);},
                    child: Image.asset('assets/apple.jpg',
                     height: 200,
                     width: 200,
                     fit: BoxFit.fill,
                     ),
                  ),
                  SizedBox(height: 10,),
                

                  GestureDetector(
                    onTap: (){MySnackbar('ontap2', context);},
                    onDoubleTap: (){MySnackbar('ondoubletap2', context);},
                    onLongPress: (){MySnackbar('onlongpressed2', context);},
                    child: Chip(label: Text('chip',
                    style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
                    avatar: Icon(Icons.code,color: Colors.white),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    labelPadding: EdgeInsets.only(left: 10,right: 10),
                    
                    ),
                  ),

                  
                  
              
            ],
          ),
        ),
      ),
    );
  }
}