import 'package:assignment/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_page(),
      debugShowCheckedModeBanner: false, 
      title: 'assignment_5',
      
    );
  }
}