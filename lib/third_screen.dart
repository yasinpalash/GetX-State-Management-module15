import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to Second screen'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to Home'),
            )
          ],
        ),
      ),
    );
  }
}
