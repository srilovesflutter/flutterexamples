import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final length = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: length,
          itemBuilder: (BuildContext context, int index) {
            return LimitedBox(
                maxHeight: 200,  
                  child: Container(
                  color: UniqueColorGenerator.getColor(),
                ),
              );
          }
        )
      ),
    );
  }
}

class UniqueColorGenerator {
  static Random random = new Random();
  static Color getColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}