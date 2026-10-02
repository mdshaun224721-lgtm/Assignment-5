import 'package:flutter/material.dart';
import 'package:flutter_batch_19/module_5/home1_screen.dart';
import 'package:flutter_batch_19/module_5/home2_screen.dart';
import 'package:flutter_batch_19/module_6/class_1.dart';
import 'package:flutter_batch_19/module_6/class_2.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'batch-19',
      debugShowCheckedModeBanner: false,
      home: module_6_class_2()
    );
  }
}