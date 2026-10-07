
import 'package:flutter/material.dart';
import 'package:flutter_batch_19/module_6/class_3.1.dart';

class module_7_class_1 extends StatefulWidget {
   module_7_class_1({super.key});

  @override
  State<module_7_class_1> createState() => _module_7_class_1State();
}

class _module_7_class_1State extends State<module_7_class_1> {

  int number=0;

  @override
  Widget build(BuildContext context){
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
            IconButton(onPressed: (){}, icon: Icon(Icons.email,size: 40,fontWeight: FontWeight.w800)),
          ],       
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(),          
              style: TextStyle(
                fontSize: 50,
                color: Colors.blue,
                ),
             ),  
             SizedBox(height: 20,),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:[ 
                ElevatedButton.icon(onPressed: (){
                setState(() {                
                  number++;
                });
               }, 
               icon: Icon(Icons.add),label: Text('add'),
               style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.red,width: 2)
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                alignment: Alignment.center,
               ),),
             


             SizedBox(height: 20,),
             ElevatedButton.icon(onPressed: (){
              setState(() {
                  number--;
              });
             }, icon: Icon(Icons.minimize),label: Text('minus'),
             style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.red,width: 2)
              ),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              alignment: Alignment.center,
             ),),
              ],
              ),
              SizedBox(height: 20,),

              ElevatedButton.icon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> class_3_1()));
              },
               icon: Icon(Icons.ads_click),label: Text('click',)),

               SizedBox(height: 20,),

               ElevatedButton.icon(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>class_3_1()));
               }, 
               icon: Icon(Icons.ads_click),label: Text('click_2'))
                  
          ],
        ),
      ),
    );
  }
}