
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Shimmer Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() {
    return MyHomeState();
  }
}


class MyHomeState extends State<MyHome> {
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
          baseColor: Colors.red,
          highlightColor: Colors.green,
                  child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19.0),             
                          child: Column(children: <Widget>[
                           Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19.0),             
                              child:  FlutterLogo( size: 70.0,),
                           ),
                                  Text('Welcome to Flutter', 
                                   textAlign: TextAlign.center,
                                   overflow: TextOverflow.ellipsis,
                                   style: new TextStyle(fontWeight: FontWeight.w300),
                                   ),
                                                          
                    ],
                  ),
              ),
              ],
            ),
          ),
        ),
    );
  }
}