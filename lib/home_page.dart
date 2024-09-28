import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Counter value: ${counterController.count}',
              style: TextStyle(fontSize: 24),
            )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counterController.increment();
              },
              child: Text('Increment'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondPage());
              },
              child: Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
