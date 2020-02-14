import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(LogoApp());

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {

  bool isPlaying = false;

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: IconButton(
          iconSize: 70,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: controller,
          ),
          onPressed: () => _onpressed(),
        )),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  _onpressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? controller.forward()
          : controller.reverse();
    });
  }
}
