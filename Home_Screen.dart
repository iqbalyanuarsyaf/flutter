import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Home_Controller.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    homeController hc = Get.put(homeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  width: 100,
                  height: 100,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/indec');
                          },
                          child: Text('Increase/Decrease')),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/listsc');
                          },
                          child: Text('List Screen'))
                    ],
                  ),
                ));
              },
              icon: Icon(Icons.edit_note_outlined))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextField(
              controller: hc.dek,
              decoration: InputDecoration(
                hintText: "Nama Anda",
                labelText: "Nama",
              ),
              onSubmitted: (value) {
                hc.gantiNilai(hc.dek.text);
                // Get.defaultDialog(
                //     title: "Nama yang diinput",
                //     middleText: hc.namacontroller.text,`
                //     onConfirm: () {
                //       Get.to(SecondScreen(), arguments: hc.namacontroller.text);
                //     });
                Get.snackbar(
                    'nilai dari variabel nama adalah:', hc.dek.text,
                    snackPosition: SnackPosition.TOP,
                    duration: Duration(seconds: 3));
              },
            ),
            SizedBox(
              height: 10,
            ),
            // Obx(() => Text(hc.nama.value)),
            GetBuilder<homeController>(builder: (hc) {
              return Text(hc.nama);
            }),
            Obx(() => Row(
              children: [
                Text(hc.isOpen.value ? 'Open' : 'Close'),
                Spacer(),
                Switch(
                    value: hc.isOpen.value,
                    inactiveThumbColor: Colors.red,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      hc.setIsOpen(value);
                    }),
              ],
            ))
          ],
        ),
      ),
    );
  }
}