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
        body: TweenAnimationBuilder(
          builder: (BuildContext context, value, Widget child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(value),
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
            );
          },
          duration: Duration(seconds: 1),
          tween: Tween<double>(begin: 20.0, end: _padding),
        ),
      ),
    );
  }
}
