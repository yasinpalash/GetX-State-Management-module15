import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'Home_screen.dart';
import 'counter_state_controller.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeScreen(),
      initialBinding: getxDependencyBinder(),
    );
  }
}

class getxDependencyBinder extends Bindings {
  ///dependency manager
  @override
  void dependencies() {
    Get.put(CounterStateController());
  }
}