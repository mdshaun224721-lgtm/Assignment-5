import 'package:flutter/material.dart';

class class_3_1 extends StatelessWidget {
   class_3_1 ({super.key});

  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
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

    ),

    //TextField ar TextFormField er kaj ekoi.
    
    body: Form(
      key: _formkey,
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            children: [
                SizedBox(height: 20,),
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  autofocus: false,
                  autocorrect: false,
                  cursorColor: Colors.red,
                  cursorErrorColor: Colors.black,
                  showCursor: true,
                  cursorHeight: 20,
                  cursorWidth: 3,
                  cursorOpacityAnimates: true, 
                  selectAllOnFocus: true,      
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'please enter the value';
                    }else if(!(value.startsWith('Md')|| value.startsWith('md')||value.startsWith('Mr')||value.startsWith('Mst'))){
                      return 'enter the valid input';
                    }else{
                      return null;
                    }
                  },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.yellow,width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        ),
                        hintText: 'enter name',
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        helperText: 'enter name',
                        helperStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 8,
                        ),
                        labelText: 'enter name',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.green,
                        prefixText: 'Name: ',
                        prefixStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: Icon(Icons.check_box),
                        suffixIconColor: Colors.green,
                        suffixText: 'submited',
                        suffixStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        )
                    ),
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  autofocus: false,
                  autocorrect: false,
                  cursorColor: Colors.red,
                  cursorErrorColor: Colors.black,
                  showCursor: true,
                  cursorHeight: 20,
                  cursorWidth: 3,
                  cursorOpacityAnimates: true, 
                  selectAllOnFocus: true, 
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'please enter the value';
                    }else if(!value.endsWith('@gmail.com')){
                      return 'enter the valid email address';
                    }else{
                      return null;
                    }
                  },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.yellow,width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        ),
                        hintText: 'enter email',
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        helperText: 'enter email',
                        helperStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 8,
                        ),
                        labelText: 'enter email',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Colors.green,
                        prefixText: 'Email: ',
                        prefixStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: Icon(Icons.check_box),
                        suffixIconColor: Colors.green,
                        suffixText: 'submited',
                        suffixStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        )
                    ),
                ),
                TextFormField(
                  controller: passwordController,                
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  autocorrect: true,
                  autofocus: true,
                  cursorColor: Colors.red,
                  cursorErrorColor: Colors.black,
                  showCursor: true,
                  cursorHeight: 20,
                  cursorWidth: 3,
                  cursorOpacityAnimates: true, 
                  selectAllOnFocus: true,     
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'please enter the value';
                    }else if(value.length < 8){
                      return 'password must be 8 character';
                    }else if(int.tryParse(value)==null){
                      return 'password must be number';
                    }else{
                      return null;
                    }
                  },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.yellow,width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        ),
                        hintText: 'enter password',
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        helperText: 'enter password',
                        helperStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 8,
                        ),
                        labelText: 'enter password',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Colors.green,
                        prefixText: 'Password: ',
                        prefixStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: Icon(Icons.check_box),
                        suffixIconColor: Colors.green,
                        suffixText: 'submited',
                        suffixStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        )
                    ),
                ),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  autofocus: false,
                  autocorrect: false,
                  cursorColor: Colors.red,
                  cursorErrorColor: Colors.black,
                  showCursor: true,
                  cursorHeight: 20,
                  cursorWidth: 3,
                  cursorOpacityAnimates: true, 
                  selectAllOnFocus: true,         
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'please enter the value';
                    }else if(value.length !=11 || !value.startsWith('01')){
                      return 'enter the valid phone Number';
                    }else if(int.tryParse(value)==null){
                      return 'enter valid number';
                    }else{
                      return null;
                    }
                  },           
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.yellow,width: 2)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.green,width: 2)
                        ),
                        hintText: 'enter phone',
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        helperText: 'enter phone',
                        helperStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 8,
                        ),
                        labelText: 'enter phone',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                        prefixIcon: Icon(Icons.phone),
                        prefixIconColor: Colors.green,
                        prefixText: 'Phone: ',
                        prefixStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: Icon(Icons.check_box),
                        suffixIconColor: Colors.green,
                        suffixText: 'submited',
                        suffixStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        )
                    ),
                ),
      
                  SizedBox(
                      width: double.infinity,
                    child: ElevatedButton.icon(onPressed: (){
                      print(nameController.text);
                      print(emailController.text);
                      print(passwordController.text);
                      print(phoneController.text);
                      
                      if(_formkey.currentState!.validate()){

                      }
                    
                    },
                    icon: Icon(Icons.ads_click), 
                    label: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.yellow,width: 2)
                    ),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    elevation: 10,
                    shadowColor: Colors.black,
                    iconSize: 20,
                    alignment: Alignment.center,
                    overlayColor: Colors.red,
                    splashFactory: InkSparkle.splashFactory,
                    padding: EdgeInsets.all(25),           
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