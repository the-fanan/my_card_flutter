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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            // main axis size basically says cover entire vertical height or just height of children
            mainAxisSize: MainAxisSize.max,
            // determines how to order children. down is default, top to bottom
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CircleAvatar(
                radius: 90,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage(
                  'images/logo-black.png',
                ),
              ),
              const Center(
                child: Text(
                  'Fanan Dala',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tanker',
                  ),
                ),
              ),
              const Center(
                child: Text(
                  'Learning Flutter',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                color: Colors.blue,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '+44-94-iwo-ma-fo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
