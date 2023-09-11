import 'package:flutter/material.dart';
import 'package:iban_ganteng/tap_controller.dart';
import 'package:get/get.dart';


class Main2Page extends StatelessWidget {
  const Main2Page({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
     
      ),
      body: Center(
        child: Column(
          
          children: <Widget>[
 SizedBox(height: 20),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    GestureDetector(
      onTap: (){
        print("masuk1");
      },
      child: Container(
        width: 150.0,
        height: 100.0,
        color: Colors.pinkAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
          Text("Named Navigation", textAlign: TextAlign.center,),
          GetBuilder<TapController>(builder: (TapController){
            return Container(
              child: Text(TapController .x. toString(),style: TextStyle(
                fontSize: 20, color: Colors.white
              ),),
            );
          },
        ],
        ),
        ),
      ),
      
      
  ],
),
 SizedBox(height: 20),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    GestureDetector(
      onTap: (){
        print("masuk1");
      },
      child: Container(
        width: 150.0,
        height: 100.0,
        color: Colors.pinkAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
          Text("Named Navigation", textAlign: TextAlign.center,),
        ],
        ),
        ),
      ),
      
      
  ],
),
 SizedBox(height: 20),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    GestureDetector(
      onTap: (){
        print("masuk1");
      },
      child: Container(
        width: 150.0,
        height: 100.0,
        color: Colors.pinkAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
          Text("Named Navigation", textAlign: TextAlign.center,),
        ],
        ),
        ),
      ),
      
      
  ],
),



          ],
          
        ),
      ),
    );
  }
}