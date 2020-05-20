

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: SafeArea(
              child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.menu, size: 40.0,),
                Text('Customer App Bar', style: TextStyle(fontSize: 20.0),),
                Icon(Icons.settings, size: 40.0,)
              ],
            ),
          ),
        ),
      ), preferredSize: Size.fromHeight(100))
    );
  }
}