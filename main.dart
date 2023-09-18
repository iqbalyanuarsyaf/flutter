import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/Home_Screen.dart';
import 'package:untitled/index_screen.dart';
import 'package:untitled/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      initialRoute: 'i',
      getPages: [
        GetPage(name: '/', page: ()=> MyApp()),
        GetPage(name: '/index', page: ()=> indexScreen()),
        GetPage(name: '/list', page: ()=> listScreen())
      ],
      home: homeScreen(),
    );
  }
}


