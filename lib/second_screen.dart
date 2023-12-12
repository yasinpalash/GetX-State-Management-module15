import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Home_screen.dart';
import 'package:getx/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.off(const ThirdScreen());
              },
              child: const Text('Go to third screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(const HomeScreen());
              },
              child: const Text('Go to Home'),
            )
          ],
        ),
      ),
    );
  }
}
