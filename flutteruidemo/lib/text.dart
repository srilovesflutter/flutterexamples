import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
