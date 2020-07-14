import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 500,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                children: [
                  GridTile(child: FlutterLogo()),
                  GridTile(child: FlutterLogo()),
                  GridTile(child: FlutterLogo()),
                  GridTile(child: FlutterLogo()),
                  GridTile(child: FlutterLogo()),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FlutterLogo(
                    size: 150.0,
                  ),
                  FlutterLogo(
                    size: 150.0,
                  ),
                  FlutterLogo(
                    size: 150.0,
                  ),
                  FlutterLogo(
                    size: 150.0,
                  ),
                  FlutterLogo(
                    size: 150.0,
                  ),
                ],
              ),
            ),
            Container(
              height: 300.0,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('ListTile1'),
                    leading: Icon(Icons.ac_unit),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile1'),
                    leading: Icon(Icons.ac_unit),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile1'),
                    leading: Icon(Icons.ac_unit),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text('ListTile2'),
                    leading: Icon(Icons.access_alarm),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
