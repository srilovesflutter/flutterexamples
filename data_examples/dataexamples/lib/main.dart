import 'package:dataexamples/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(MyHomePage());
  await Firebase.initializeApp();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: MyNavigation(),
        appBar: AppBar(
          title: Text('Start Exploring'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 40.0),
          child: Container(
            child: Column(
              children: [
                Text(
                  'In this App, you can find multiple examples of how to deal with Data in Flutter. This is made for learning purposes only.',
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Click on the Navigation Bar to start exploring.',
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
