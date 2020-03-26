import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double padValue = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Circle Filling"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: MyFillingContainer(
                  progress: padValue / 10,
                  size: 200,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
              ),
            ),
            Text('Fill Value: $padValue'),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Fill'),
                  onPressed: () {
                    setState(() {
                      padValue = padValue + 1;
                    });
                  },
                ),
                RaisedButton(
                  child: Text('Unfill'),
                  onPressed: () {
                    setState(() {
                      if (padValue != 0) {
                        padValue = padValue - 1;
                      }
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyFillingContainer extends StatelessWidget {
  final double progress;
  final double size;
  final Color backgroundColor;
  final Color progressColor;

  const MyFillingContainer(
      {Key key,
      this.progress,
      this.size,
      this.backgroundColor,
      this.progressColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: SizedBox(
        height: size,
        width: size,
        child: Stack(          
          children: [
          Container(
            color: backgroundColor,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size * progress,
              color: progressColor,
            ),
          )
        ]),
      ),
    );
  }
}
