import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  MySnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
        titleSpacing: 10,
        toolbarHeight: 60,
        centerTitle: false,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 10,
        shadowColor: Colors.black,
        actions: [
          IconButton(onPressed: (){MySnackbar('hello settings', context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackbar('hello search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackbar('hello email', context);}, icon: Icon(Icons.email)),
        ]),



        // floating Action Button:
        floatingActionButton: FloatingActionButton(
          onPressed: (){MySnackbar('hello floating', context);},
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,  
          elevation: 0.0,        
          splashColor: Colors.yellow,
          shape: RoundedRectangleBorder(borderRadius: 
            BorderRadius.circular(20)
          ),
        ),


        // Navigation Bar:
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.contact_emergency),label: 'contact'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile')
          ],
          onTap: (int index){
            if(index==0){
              MySnackbar('hello home', context);
            }
            else if(index==1){
              MySnackbar('hello contact', context);
            }
            else{
              MySnackbar('hello prfile', context);
            }
          },
          
          backgroundColor: Colors.blue,
          iconSize: 25,
          currentIndex: 1,
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.yellow),
          unselectedItemColor: Colors.white,
        ),   

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              DrawerHeader(
              
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Colors.blue))
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue),),
                                 
                  accountName: Text('hasib',style: TextStyle(color: Colors.blue),), 
                  accountEmail: Text('hasib123@gmail,com',style: TextStyle(color: Colors.blue)),
                  currentAccountPicture: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNcyo-uIIhNDn1uCGYoLQ-xLixm4fXC7XLmDAat0AeVQ&s=10'),
                  currentAccountPictureSize: Size(200, 100),                 
              )),             
              ListTile(
                title:   Text('home'),leading: Icon(Icons.home),
                textColor: Colors.blue,
                iconColor: Colors.blue,
                splashColor: Colors.yellow,
                onTap: (){
                  MySnackbar('hello home', context);
                },
              ),
              ListTile(
                title:   Text('profile'),leading: Icon(Icons.person),
                textColor: Colors.blue,
                iconColor: Colors.blue,
                splashColor: Colors.yellow,
                onTap: (){
                  MySnackbar('hello profile', context);
                },
              ),
              ListTile(
                title:   Text('settings'),leading: Icon(Icons.settings),
                textColor: Colors.blue,
                iconColor: Colors.blue,
                splashColor: Colors.yellow,
                onTap: (){
                  MySnackbar('hello settings', context);
                },
              ),
              ListTile(
                title:   Text('help'),leading: Icon(Icons.help),
                textColor: Colors.blue,
                iconColor: Colors.blue,
                splashColor: Colors.yellow,
                onTap: (){
                  MySnackbar('hello help', context);
                },
              ),

        ])
        ),
         
        body: SingleChildScrollView(
          child: Column(

            children: [

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
                    Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
                    Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
                    
                  ],
                ),
              ),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),
              Text('hello bangladesh',style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.w600)),

              ]
              ),

              
            ),

          

        
        
      
    
  );
  }
}