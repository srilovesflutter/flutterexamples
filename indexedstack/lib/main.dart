import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IndexedStack Example",
      home: Scaffold(
        appBar: AppBar(title: Text("IndexedStack Example")),
        body: Column(
          children: <Widget>[
            Expanded(
              child: IndexedStack(
                index: i,
                children: <Widget>[
                  Container(color: Colors.red,),
                  Container(color: Colors.green),
                  Container(color: Colors.blue),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  if(i < 2){
                     i++; 
                  } else{
                    i = 0;
                  }
                });
              },
              child: Text('Show Next Widget'),
            )
          ],
        ),
      ),
    );
  }
}