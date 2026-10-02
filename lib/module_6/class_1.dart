import 'package:flutter/material.dart';

class module_6_class_1 extends StatelessWidget {
  const module_6_class_1({super.key});

  MySnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
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
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                      GestureDetector(
                       onTap: (){
                        MySnackbar('onTap', context);
                       },
                
                       onDoubleTap: (){
                        MySnackbar('onDoubleTap', context);
                       },
                
                       onLongPress: (){
                        MySnackbar('onLongpressed', context);
                       },             
                
                        child: Image.network('https://thumbs.dreamstime.com/b/black-post-icon-click-action-isolated-silhouette-style-button-showing-cursor-clean-modern-design-white-background-470786230.jpg',
                        height: 200,
                        width: 200,
                        fit:BoxFit.fill),
                      ),
                      SizedBox(height: 10,),

                      InkWell(
                        onTap: (){
                         MySnackbar('onTap', context);
                        },
                
                        onDoubleTap: (){
                         MySnackbar('onDoubleTap', context);
                        },
                
                        onLongPress: (){
                         MySnackbar('onLongpressed', context);
                        },    

                        child: ClipOval(
                          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJzQUMHblpKlHHbcIgbakXd0nfPf6WO9NmHEbjXxNYOHbeSUQleRz8kyre&s=10',
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,),
                        ),
                      ),
                      SizedBox(height: 10,),

                      GestureDetector(
                        onTap: (){
                          MySnackbar('chip', context);
                        },

                        onDoubleTap: (){
                          MySnackbar('chip', context);
                        },

                        onLongPress: (){
                          MySnackbar('chip', context);
                        },
                        
                            child: Chip(label: Text('click',style: TextStyle(color: Colors.white),),
                            avatar: Icon(Icons.code,color: Colors.white,),
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.all(0),
                            
                            
                            ),
                          
                        
                      ),

                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/apple.jpg'),
                        
                      )
                    ]),
              ),
            ),             
           );
          
        
      

    
  }
}