import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // main axis size basically says cover entire vertical height or just height of children
            mainAxisSize: MainAxisSize.max,
            // determines how to order children. down is default, top to bottom
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.white,
                child: const Text('Container 1'),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.blue,
                child: const Text('Container 2'),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.red,
                child: const Text('Container 3'),
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
