import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedPositioned Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'AnimatedPositioned Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double pos_l = 0;
  double pos_r = 0;
  double pos_t = 0;
  double pos_b = 0;

  void _movewidget(String pos) {
    setState(() {
      if (pos == "Up") {
        pos_l = 0;
        pos_r = 0;
        pos_t = 0;
        pos_b = 100;
      } else if (pos == "Right") {
        pos_l = 100;
        pos_r = 0;
        pos_t = 0;
        pos_b = 0;
      } else if (pos == "Down") {
        pos_l = 0;
        pos_r = 0;
        pos_t = 100;
        pos_b = 0;
      } else if (pos == "Left") {
        pos_l = 0;
        pos_r = 100;
        pos_t = 0;
        pos_b = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              left: pos_l,
              right: pos_r,
              top: pos_t,
              bottom: pos_b,
              duration: Duration(milliseconds: 500),
              child: Center(
                child: Container(
                  color: Colors.red,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 160,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Up");
                },
                child: Icon(Icons.keyboard_arrow_up),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 260,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Right");
                },
                child: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 160,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Down");
                },
                child: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 60,
              child: RaisedButton(
                onPressed: () {
                  _movewidget("Left");
                },
                child: Icon(Icons.keyboard_arrow_left),
              ),
            )
          ],
        ),
      )),
    );
  }
}
