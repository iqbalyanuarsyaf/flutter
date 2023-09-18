import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Home_Controller.dart';
import 'package:untitled/Second_Screen.dart';

void main() => runApp(homeScreen());

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    homeController hc = Get.put(homeController());
    return Scaffold(
      appBar : AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(onPressed: () {

          }, icon: )
        ],
      ),
      body:Column(
        children: [
          Container(
              child: TextField(
                controller: hc.dek,
                style: TextStyle(

                ),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Input Nama',
                ),
                onSubmitted: (value) {
                  // hc.ChangeName(hc.dek);
                  // Get.defaultDialog(
                  //   title: 'ini adalah judul',
                  //   middleText: isi.dek.text,
                  //   onConfirm: (){
                  //     Get.to(secondScreen(), arguments: isi.dek.text );
                  //   }
                  // );
                },
              ),
            ),
          // Obx(() => Text(hc.nama.value)),
          GetBuilder<homeController>(builder: (hc){
            return Text(hc.nama);
          }),
          Obx(() => Row(
            children: [
              Switch(
                value: hc.isOpen.value,
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                onChanged: (value){
                  hc.setIsOpen(value);
                }),
              Text(hc.isOpen.value ? 'open' : 'close'),
            ],
          ))
        ],
      ),
      );
  }
}

