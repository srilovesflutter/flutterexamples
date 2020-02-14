

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ConstrainedBox Example"),),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 100.0,
                maxWidth: 100.0
              ),
              child: const Card(child: Text('maxHeight: 100.0 and maxWidth: 100.0')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 100.0,
                minWidth: 100.0
              ),
              child: const Card(child: Text('minHeight: 100.0 and minWidth: 100.0')),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 100.0,
              ),
              child: const Card(child: Text('minHeight: 100.0')),
            ),
             ConstrainedBox(
               constraints: const BoxConstraints(
                 minWidth: 100.0,
               ),
               child: const Card(child: Text('minWidth: 100.0')),
             ),
          ],
        ),
      )
    );
  }
}
