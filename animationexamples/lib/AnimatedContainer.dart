import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var counter = 0;
  double _padding = 20.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                color: Colors.red,
                duration: Duration(milliseconds: 500),
                child: Text(
                  'Clicked $counter times',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    _padding = _padding + 10;
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
