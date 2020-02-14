import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building Layouts with FLutter'),
        ),
        body: Center(
          child: Text(
            'Hello Flutter Layouts',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('You clicked');
          },
          child: Icon(Icons.lightbulb_outline),
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.add), onPressed: () {},
          ),
           IconButton(
            icon: Icon(Icons.alarm), onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_location), onPressed: () {},
          ),
        ],
      ),
    );
  }
}
