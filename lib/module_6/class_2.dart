import 'package:flutter/material.dart';

class module_6_class_2 extends StatelessWidget {
   module_6_class_2({super.key});

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

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          return 
               Card(
            child: ListTile(
              title: Text(users[index]['name']),
              subtitle: Text(users[index]['phone']),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.call),             
            ),
          );
        },
      ),
      
      
      //  ListView(
      //   children: [

      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('hasib',style: TextStyle(fontSize: 26),),
      //         subtitle: Text('01924738922',style: TextStyle(fontSize: 20),),
      //         leading: CircleAvatar(
      //           radius: 30,
      //           backgroundColor: Colors.green,
      //           child: Icon(Icons.person),
      //         ),
      //         trailing: Icon(Icons.call),             
      //       ),
      //     ),
      //   ],
        
      // )
    );
  }
}