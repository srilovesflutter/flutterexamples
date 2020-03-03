

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AnimatedOpacity Example",
      home: Scaffold(
        appBar: AppBar(title: Text('AnimatedOpacity Example'),),
        body: MyHomePage(visible: _visible),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.flip),
          onPressed: (){
            setState(() {
             _visible = !_visible; 
            });
          },
        ),
      ),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  final bool visible;

  const MyHomePage({Key key, this.visible}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
              child: Container(
          child: Center(child: Text('Hello World')),
          width: 200.0,
          height: 200.0,
          color: Colors.green,
        ), duration: Duration(seconds: 1), 
        opacity: widget.visible ? 1.0: 0.0,
      ),
    );
  }
}