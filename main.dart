import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Home_Screen.dart';
import 'package:untitled/add_matpel.dart';
import 'package:untitled/list_screen.dart';
import 'inDec_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: ()=>MyApp()),
        GetPage(name: "/indec", page: ()=>indexScreen()),
        GetPage(name: "/listsc", page: ()=>listScreen()),
        GetPage(name: "/matpel", page: ()=>addMatpel()),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: homeScreen(),
    );
  }
}