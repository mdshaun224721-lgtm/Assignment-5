import 'package:flutter/material.dart';
class Home1Screen extends StatelessWidget {
  const Home1Screen({super.key});

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
        ],),
        
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

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Icon(Icons.camera_alt_rounded,
                color: Colors.blue,
                size: 40,
                fontWeight: FontWeight.w900,
                ),

                IconButton(onPressed: (){MySnackbar('hello star', context);}, icon: Icon(Icons.star_rate_outlined,
                color: Colors.blue,
                size: 40,
                fontWeight: FontWeight.w900,
                )),

                Image.asset('assets/apple.jpg',
                height: 300,
                width: 300,
                fit: BoxFit.contain),

                SizedBox(height: 10,),


                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                     child: ElevatedButton(onPressed: (){MySnackbar('hello ElevatedButton', context);}, child: Text('click'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.yellow,width: 2)
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shadowColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      minimumSize: Size(double.infinity, 50) // Sized box er hight wide er karone ei hight wide kaj korbe na                  
                    ),),
                  ),
                ),

                SizedBox(height: 10),

                //About Textbutton: 

                Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextButton(onPressed: (){MySnackbar('hello TextButton', context);}, child: Text('see more'),                   
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),                      
                        side: BorderSide(color: Colors.yellow,width: 1),
                        ),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shadowColor: Colors.red,
                        minimumSize: Size(double.maxFinite, 70),                       
                    ),),
                  ),
                ),
                SizedBox(height: 10,),

                TextButton(onPressed: (){}, child: Text('See more'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(100, 50)

                ),),
                SizedBox(height: 10,),
                
                //About outlineButton:
                SizedBox(width: double.infinity,height: 50,
                  child: Container(height: 40,width: double.infinity,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                      child: OutlinedButton(onPressed: (){
                        MySnackbar('hello outlineButton', context);                  
                      }, child: Text('click on'),                 
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(width: 2,color: Colors.yellow)
                        ),
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shadowColor: Colors.red,
                          minimumSize: Size(double.maxFinite, 70),
                          //jekuno button er hight width onk vabe dewa jay but upore jeta thakbe seta e karjokor hobe              
                      ),),
                    ),
                  ),
                ),
              ],            
            ),
          ),
        ),
    );
  }
}