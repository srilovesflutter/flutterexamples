import 'package:flutter/material.dart';

class MyAppListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        children: [
          ListTile(
              title: Text('Robo'),
              leading: Icon(Icons.ac_unit),
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
