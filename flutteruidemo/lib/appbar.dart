import 'package:flutter/material.dart';
import 'package:flutteruidemo/navigation/bottomnavigation.dart';

// Main is the starting point of the program
void main() {
  runApp(MyApp());
}

/// MaterialApp will add material designed to your app.
/// Scaffold will make things much better.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      bottomNavigationBar: MyBottomNavigation(),
      appBar: AppBar(
        title: Text('AppBar Example'),
        actions: [
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          PopupMenuButton(itemBuilder: (context) {
            //List<PopupMenuEntry<dynamic>>
            return [
              PopupMenuItem(child: Text('Item1')),
              PopupMenuItem(child: PopupMenuDivider()),
              PopupMenuItem(child: Text('Item3')),
              PopupMenuItem(
                  child: CheckedPopupMenuItem(
                checked: true,
                child: Text('Item3'),
              ))
            ];
          })
        ],
      ),
    ));
  }
}
