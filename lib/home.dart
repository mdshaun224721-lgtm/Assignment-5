import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 5,
        shadowColor: Colors.black,
        actions: [

          IconButton(onPressed: (){
            print('add button');
          },
           icon: Icon(Icons.add)),

          IconButton(onPressed: (){
            print('settings button');
          },
           icon: Icon(Icons.settings)),

          IconButton(onPressed: (){
            print('call button');
          },
           icon: Icon(Icons.call)),

        ],       
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 14),
              CircleAvatar(
                radius: 130,
                backgroundColor: Colors.purple.shade50,
                child: Icon(Icons.icecream_outlined,
                size: 130,
                color: Colors.indigo),
                
              ),      
              SizedBox(height: 14),
        
              Text('Ice cream is very delicious right?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
                ),      
                SizedBox(height: 14),
        
              CircleAvatar(
                radius: 130,
                backgroundColor: Colors.purple.shade50,
                child: Icon(Icons.code,
                size: 130,
                color: Colors.indigo,),
              ),
                SizedBox(height: 14),
        
              Text('Programming is not boring if you love it',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold)),
            
            ],
          ),
        ),
      ),
    );
  }
}