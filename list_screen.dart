
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Home_Controller.dart';

class listScreen extends StatelessWidget {
  const listScreen({super.key});

  @override
  Widget build(BuildContext context) {
    homeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: hc.namaSiswa,
              decoration: InputDecoration(labelText: 'nama siswa'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              hc.tambahKeList(hc.namaSiswa.text);
            }, child: Text('Submit')),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                    itemCount: hc.SiswaName.length,
                    itemBuilder: (context, index){
                    return Card(
                      child: Text(hc.SiswaName.value[index]),
                    );
                    },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
