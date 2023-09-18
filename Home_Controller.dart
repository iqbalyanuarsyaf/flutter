import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeController extends GetxController{
  TextEditingController dek =TextEditingController();

  RxBool isOpen=RxBool(true);
  RxBool isClose=RxBool(false);
  String nama ='';
  // RxString nama = RxString('');

  void gantiNilai(String nm){
    nama=nm;
    update();
  }

  void setIsOpen(bool open){
    isOpen(open);
  }

  void setIsClose(bool close){
    isClose(close);
  }

  // void ChangeName(String){
  //   nama.value;
  //   print(nama.value);
  //   Get.snackbar('pesan ini snackbar',
  //       nama.value,
  //       snackPosition: SnackPosition.TOP,
  //       duration: Duration(seconds: 5) );
  // }
}