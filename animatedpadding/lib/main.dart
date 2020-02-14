import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AnimatedPadding"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: AnimatedPadding(
                child: Container(
                  color: Colors.red,
                ),
                duration: const Duration(seconds: 1),
                padding: EdgeInsets.all(padValue),
                curve: Curves.easeInOut,
              ),
            ),
            Text('Padding Value: $padValue'),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                 RaisedButton(
                    child: Text('Add Padding'),
                    onPressed: () {
                      setState(() {
                        padValue = padValue + 10;
                      });
                    },
                  ),
                  RaisedButton(
                    child: Text('Sub Padding'),
                    onPressed: () {
                      setState(() {
                        if(padValue != 0)
                        {
                          padValue = padValue - 10;
                        }                  
                      });
                    },
                  )
              ],
            )
           

          ],
        ),
      ),
    );
  }
}