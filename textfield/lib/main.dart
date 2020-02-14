import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Keyboard Type Example'),
        ),
        body: Center(
          child: 
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.text_fields),
                  filled: true,
                  fillColor: Colors.grey[400],
                  hintText: 'Select this TextBox'
                ),
              ),
          ),
        ),
      ),
    );
  }
}