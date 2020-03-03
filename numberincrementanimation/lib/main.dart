import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(LogoApp());
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp>
    with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController _controller;
  String i;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration:const Duration(seconds: 10), vsync: this);
    animation =Tween<double>(begin: 0, end: 300).animate(_controller)
    ..addListener((){
      setState((){
        // The state that has changed here is the animation objects value
        i = animation.value.toStringAsFixed(0);
      });
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text('$i', textDirection: TextDirection.rtl, style: TextStyle(fontSize: 20),),
      ),
    );
  }
}