
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeController extends GetxController{
  TextEditingController dek =TextEditingController();
  TextEditingController namaSiswa =TextEditingController();
  TextEditingController namaMatpel =TextEditingController();
  TextEditingController kodeMatpel =TextEditingController();

  RxBool isOpen=RxBool(true);
  RxBool isClose=RxBool(false);

  RxInt count = RxInt(0);
  RxList<String> SiswaName = RxList<String>([]);
  RxMap<String, String> listMatpel = RxMap<String, String>();

  String nama ='';
  RxInt x = 0.obs;
  // RxString<string> siswaName = '';
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

  // inDec screen
  void setIsOpen(bool open){
    isOpen(open);
  }

  void setIsClose(bool close){
    isClose(close);
  }

  // list screen
  void tambahKeList(String nama) {
    SiswaName.add(nama);
    print(SiswaName.value);
  }

  void addSiswa(String nama){
    SiswaName.add(nama);
    namaSiswa.text = '';
    print(SiswaName.value);
  }

  void removeSiswa(int index){
    SiswaName.removeAt(index);
  }

  void addMatpel(String nmMatpel, String jnsMatpel){
    listMatpel[nmMatpel] = jnsMatpel;
    print(listMatpel.value);
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