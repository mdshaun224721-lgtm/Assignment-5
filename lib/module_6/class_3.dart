import 'package:flutter/material.dart';

class class_3 extends StatelessWidget {
   class_3({super.key});

  TextEditingController nameConroller=TextEditingController();
  TextEditingController emailConroller=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController phoneController=TextEditingController();

  final _formkey=GlobalKey<FormState>();



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

      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField( 
                controller: nameConroller,
                keyboardType: TextInputType.name,            
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green,width: 2)
                  ),     
                  hintText: 'Enter Name',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    // background: Paint()
                  ),
                  helperText: 'Enter Name',
                  helperStyle: TextStyle(
                    color: Colors.amber,
                    fontSize: 8,
                  ),
                  labelText: 'Enter Name',
                  labelStyle: TextStyle(
                    color: Colors.amber,
                  ),
                   prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.blue,
                  suffixIcon: Icon(Icons.check_box),
                  suffixIconColor: Colors.blue, 
              )
            ),
              TextField( 
                controller: emailConroller,
                keyboardType: TextInputType.emailAddress,            
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green,width: 2)
                  ),     
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    // background: Paint()
                  ),
                  helperText: 'Enter Email',
                  helperStyle: TextStyle(
                    color: Colors.amber,
                    fontSize: 8,
                  ),
                  labelText: 'Enter Email',
                  labelStyle: TextStyle(
                    color: Colors.amber,
                  ),
                   prefixIcon: Icon(Icons.email),
                   prefixIconColor: Colors.blue, 
                   suffixIcon: Icon(Icons.check_box),
                   suffixIconColor: Colors.blue,              
               ),
              ),
              TextField( 
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword, 
                obscureText: true,
                autocorrect: false,
                autofocus: true,
                canRequestFocus: true,           
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green,width: 2)
                  ),
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.blue,
                  suffixIcon: Icon(Icons.check_box),
                  suffixIconColor: Colors.blue,    
                  hintText: 'Enter Password',
          
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    // background: Paint()
                  ),
                  helperText: 'Enter Password',
                  helperStyle: TextStyle(
                    color: Colors.amber,
                    fontSize: 8,
                  ),
                  labelText: 'Enter Password',
                  labelStyle: TextStyle(
                    color: Colors.amber,
                  ),
               ),
              ),
              TextField( 
                controller: phoneController,
                keyboardType: TextInputType.phone,            
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green,width: 2)
                  ),     
                  hintText: 'Enter Phone',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    // background: Paint()
                  ),
                  helperText: 'Enter Phone',
                  helperStyle: TextStyle(
                    color: Colors.amber,
                    fontSize: 8,
                  ),
                  labelText: 'Enter Phone',
                  labelStyle: TextStyle(
                    color: Colors.amber,
                  ),
                   prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.blue,
                  suffixIcon: Icon(Icons.check_box),
                  suffixIconColor: Colors.blue, 
              )
            ),
              ElevatedButton(onPressed: (){
                print(nameConroller.text);
                print(emailConroller.text);
                print(passwordController.text);
                print(phoneController.text);
              }, child: Text('Submit')),
          
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField( 
                      validator: (value) {
                        if(value==null || value.isEmpty){
                          return 'please enter the value';
                        }else if(!value.startsWith('Md') || !value.startsWith('md')){
                          return 'please enter the valid input';
                        }else{
                          return null;
                        }
                      },
                  controller: nameConroller,
                  keyboardType: TextInputType.name,            
                    decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green,width: 2)
                    ),     
                    hintText: 'Enter Name',
                    hintStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      // background: Paint()
                    ),
                    helperText: 'Enter Name',
                    helperStyle: TextStyle(
                      color: Colors.amber,
                      fontSize: 8,
                    ),
                    labelText: 'Enter Name',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                     prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.blue,
                    suffixIcon: Icon(Icons.check_box),
                    suffixIconColor: Colors.blue, 
                )
              ),
                TextFormField( 
                validator:(value) {
                  if(value == null || value.isEmpty){
                    return 'please enter the value';
                  }else if(value.length != 11 || !value.startsWith('01')){
                    return 'please enter the valid phoneNumber';
                  }else{
                    return null;
                  }
                },
                  controller: phoneController,
                  keyboardType: TextInputType.phone,            
                    decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red,width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green,width: 2)
                    ),     
                    hintText: 'Enter Phone',
                    hintStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      // background: Paint()
                    ),
                    helperText: 'Enter Phone',
                    helperStyle: TextStyle(
                      color: Colors.amber,
                      fontSize: 8,
                    ),
                    labelText: 'Enter Phone',
                    labelStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    prefixIcon: Icon(Icons.call),
                    prefixIconColor: Colors.blue,
                    suffixIcon: Icon(Icons.check_box),
                    suffixIconColor: Colors.blue, 
                )
                          ),
                          ElevatedButton(onPressed: (){
                            if(_formkey.currentState!.validate()){

                            }

                        }, child: Text('Submit'))
                  ],
                ),
              )
            ]         
          ),
        ),
      ),
    );
  }
}