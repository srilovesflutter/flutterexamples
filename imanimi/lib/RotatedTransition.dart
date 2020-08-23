import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: MyAnimatedController()),
      ),
    );
  }
}

class MyAnimatedContainer extends StatefulWidget {
  final AnimationController controller;

  const MyAnimatedContainer({Key key, this.controller}) : super(key: key);

  @override
  _MyAnimatedContainerState createState() =>
      _MyAnimatedContainerState(controller);
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  var counter = 0;
  final AnimationController _controller;

  _MyAnimatedContainerState(this._controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotationTransition(
          turns: _controller,
          child: Container(
              padding: EdgeInsets.all(46.0),
              child: Text('Clicked $counter times')),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              counter++;

              _controller.isAnimating
                  ? _controller.stop()
                  : _controller.repeat();
            });
          },
          child: Text('Click here'),
        ),
      ],
    );
  }
}

class MyAnimatedController extends StatefulWidget {
  @override
  _MyAnimatedControllerState createState() => _MyAnimatedControllerState();
}

class _MyAnimatedControllerState extends State<MyAnimatedController>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
          ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyAnimatedContainer(controller: _controller);
  }
}
