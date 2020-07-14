import 'package:flutter/material.dart';

// Solve the image problem.
// If possible try to get other images from the internet and try.

class ListViewImageProblem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        children: [
          ListTile(
              title: Text('Robo'),
              leading: Image.network(
                  'https://www.filmibeat.com/ph-big/2018/11/2-0_154337875810.jpg'),
              subtitle: Text('Excellent movie'),
              trailing:
                  RaisedButton(onPressed: () {}, child: Text('Buy Tickets'))),
          ListTile(
              title: Text('Remo'),
              leading: Icon(Icons.account_box),
              subtitle: Text('Excellent movie'),
              trailing:
                  RaisedButton(onPressed: () {}, child: Text('Buy Tickets'))),
          ListTile(
              title: Text('Avenger:End Game'),
              leading: FlutterLogo(),
              subtitle: Text('Excellent movie'),
              trailing:
                  RaisedButton(onPressed: () {}, child: Text('Buy Tickets'))),
          ListTile(
              title: Text('Master'),
              leading: FlutterLogo(),
              subtitle: Text('Excellent movie'),
              trailing:
                  RaisedButton(onPressed: () {}, child: Text('Buy Tickets'))),
          ListTile(
              title: Text('Visvasam'),
              leading: FlutterLogo(),
              subtitle: Text('Excellent movie'),
              trailing:
                  RaisedButton(onPressed: () {}, child: Text('Buy Tickets')))
        ],
      )),
    );
  }
}
