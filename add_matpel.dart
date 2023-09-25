import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Home_Controller.dart';

class addMatpel extends StatelessWidget {
  const addMatpel({super.key});

  @override
  Widget build(BuildContext context) {
    homeController hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('add Mapel'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: hc.kodeMatpel,
              decoration: InputDecoration(labelText: 'key'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: hc.namaMatpel,
              decoration: InputDecoration(labelText: 'nama'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              hc.addMatpel(hc.kodeMatpel.text, hc.namaMatpel.text);
            }, child: Text('Submit')),
            Expanded(
              child: Obx(
                    () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: hc.listMatpel.length,
                  itemBuilder: (context, index){
                    String key = hc.listMatpel.keys.elementAt(index);
                    return ListTile(
                      title: Text( '${hc.listMatpel.value[key]}'),
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
