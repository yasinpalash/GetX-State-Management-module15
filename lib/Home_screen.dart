import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/second_screen.dart';
import 'counter_state_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterStateController counterStateController =
      Get.find<CounterStateController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterStateController>(
              builder: (controller) {
                return Text(
                  controller.count.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const SecondScreen());
              },
              child: const Text('go to second screen'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterStateController.incrementCount(1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
