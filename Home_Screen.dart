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
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey,
                  width: 100,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/indexScreen');
                          },
                          child: Text('Increase/Decrease')),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listScreen');
                          },
                          child: Text('List Screen')),
                    ],
                  ),
                ));
          }, icon: Icon(Icons.edit_note_outlined))
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

