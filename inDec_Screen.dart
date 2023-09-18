import 'package:flutter/material.dart';
import 'package:untitled/Home_Controller.dart';
import 'package:get/get.dart';

class indexScreen extends StatelessWidget {
  const indexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    homeController hc = Get.put(homeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman InDecScreen'),
      ),
      body: Center(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  hc.Increase();
                },
                icon: Icon(Icons.add)),
            Spacer(),
            Obx(() => Text(hc.x.toString())),
            Spacer(),
            IconButton(
                onPressed: () {
                  hc.Decrease();
                },
                icon: Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}