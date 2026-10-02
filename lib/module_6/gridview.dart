import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
   gridview({super.key});

  final List<Map<String,dynamic>> users=[
    {
      'name':'hasib',
      'phone':'015354634345',
    },
    {
      'name':'hasib',
      'phone':'015354634345',
    },
    {
      'name':'hasib',
      'phone':'015354634345',
    },
    {
      'name':'hasib',
      'phone':'015354634345',
    },
    {
      'name':'hasib',
      'phone':'015354634345',
    },
    {
      'name':'hasib',
      'phone':'015354634345',
    },
  ];


  MySnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
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

      body: GestureDetector(
        onTap: (){
          MySnackbar('hello', context);
        },
        onDoubleTap: (){
         MySnackbar('hello', context);
        },
        onLongPress: (){
         MySnackbar('hello', context);
        },
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
          ),
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Card( 

              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_alarm_outlined),
                  Text('cash in')
                ],
              ),

              // child: ListTile(
              // title: Text(users[index]['name']),
              // subtitle: Text(users[index]['phone']),
              // leading: CircleAvatar(
              //   radius: 30,
              //   backgroundColor: Colors.green,
              //   child: Icon(Icons.person),
              // ),
              // trailing: Icon(Icons.call),           

            );           
          },
        ),
      ),
      
      // GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 12,
      //   mainAxisSpacing: 12,
      //   children: [
      //       Container(
      //       color: Colors.blue),
      //       Container(
      //       color: Colors.blue),
      //       Container(
      //       color: Colors.blue),
      //       Container(
      //       color: Colors.blue),
      //       Container(
      //       color: Colors.blue),
      //       Container(
      //       color: Colors.blue),
      //       Container(
      //       color: Colors.blue),
          
      //   ],
      // ),
    );
  }
}