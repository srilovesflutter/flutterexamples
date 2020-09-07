import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Clicked ${counter.number} times'),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter.number++;
                  });
                },
                child: Text('Click here'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Counter {
  int number;

  Counter({this.number = 10});
}
