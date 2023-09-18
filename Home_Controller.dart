import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeController extends GetxController{
  TextEditingController dek =TextEditingController();

  RxBool isOpen=RxBool(true);
  RxBool isClose=RxBool(false);
  String nama ='';
  RxInt x = 0.obs;
  // RxString nama = RxString('');

  void Increase(){
    x.value++;
  }

  void Decrease(){
    x.value--;
  }

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