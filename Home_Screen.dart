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
                          child: Text('List Screen')),
                      TextButton(
                          onPressed: () {
                            Get.toNamed('/matpel');
                          },
                          child: Text('Add Matpel')),
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

            //container utama untuk card pertama
            Container(
              height: 50,
              width: 500,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Jumlah Siswa')
                ],
              ),
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.lightGreen,
              child: Column(
                children: [
                Container(
                  height: 100,
                  width: 500,
                  color: Colors.lightGreen,
                  child: Row(
                    children: [
                      Text('Jumlah Siswa : '),
                      // Spacer(),
                      Obx(() => Text(hc.x.toString())),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            hc.Increase();
                          },
                          icon: Icon(Icons.add)),
                      IconButton(
                          onPressed: () {
                            hc.Decrease();
                          },
                          icon: Icon(Icons.remove)),
                    ],
                  ),
                ),
                  Container(
                    child: Row(
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
                    ),
                  )
                ],
              ),
            ),

            // Container(
            //   height: 200,
            //   width: 500,
            //   color: Colors.lightGreen,
            //   child: Row(
            //     children: [
            //       Text('Jumlah Siswa : '),
            //       // Spacer(),
            //       Obx(() => Text(hc.x.toString())),
            //       Spacer(),
            //       IconButton(
            //           onPressed: () {
            //             hc.Increase();
            //           },
            //           icon: Icon(Icons.add)),
            //       IconButton(
            //           onPressed: () {
            //             hc.Decrease();
            //           },
            //           icon: Icon(Icons.remove)),
            //     ],
            //   ),
            // ),


            // TextField(
            //   controller: hc.dek,
            //   decoration: InputDecoration(
            //     hintText: "Nama Anda",
            //     labelText: "Nama",
            //   ),
            //   onSubmitted: (value) {
            //     hc.gantiNilai(hc.dek.text);
            //     // Get.defaultDialog(
            //     //     title: "Nama yang diinput",
            //     //     middleText: hc.namacontroller.text,`
            //     //     onConfirm: () {
            //     //       Get.to(SecondScreen(), arguments: hc.namacontroller.text);
            //     //     });
            //     Get.snackbar(
            //         'nilai dari variabel nama adalah:', hc.dek.text,
            //         snackPosition: SnackPosition.TOP,
            //         duration: Duration(seconds: 3));
            //   },
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // // Obx(() => Text(hc.nama.value)),
            // GetBuilder<homeController>(builder: (hc) {
            //   return Text(hc.nama);
            // }),
            // Obx(() => Row(
            //   children: [
            //     Text(hc.isOpen.value ? 'Open' : 'Close'),
            //     Spacer(),
            //     Switch(
            //         value: hc.isOpen.value,
            //         inactiveThumbColor: Colors.red,
            //         activeColor: Colors.green,
            //         onChanged: (value) {
            //           hc.setIsOpen(value);
            //         }),
            //   ],
            // ))
          ],
        ),
      ),
    );
  }
}