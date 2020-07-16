import 'package:flutter/material.dart';

class MyBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
      BottomNavigationBarItem(title: Text('School'), icon: Icon(Icons.school)),
      BottomNavigationBarItem(
          title: Text('Message'), icon: Icon(Icons.message)),
    ]);
  }
}
