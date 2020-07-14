import 'package:flutter/material.dart';

/// Inorder to run this, call MyGridView from main.dart file

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.grey,
        ),
      ],
    );
  }
}
