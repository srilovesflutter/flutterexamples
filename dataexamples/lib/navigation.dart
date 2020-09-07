import 'package:dataexamples/FireBase/Myfirebase.dart';
import 'package:dataexamples/FireBaseMessage/MyFirebaseMessageApp.dart';
import 'package:dataexamples/SHARED_PREFERENCES/mysharedpreferences.dart';
import 'package:dataexamples/SQFLITE/MysqflitePage.dart';
import 'package:dataexamples/SQFLITETODO/Mytodohomepage.dart';
import 'package:dataexamples/WEBAPI/Mywebapi.dart';
import 'package:flutter/material.dart';

class MyNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 28.0, horizontal: 15.0),
                child: Text(
                  'Persist Data Examples',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              )),
          ListTile(
              title: Text('shared_preferences'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySharedPreferencesPage(),
                  ))),
          ListTile(
              title: Text('SQFLITE'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MysqflitePage(),
                  ))),
          ListTile(
              title: Text('SQFLITE TODO APP'),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTodoHome(),
                  ))),
          ListTile(
            title: Text('WebApi'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyWebApi(),
                )),
          ),
          ListTile(
            title: Text('FireBase'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyFireBase(),
                )),
          ),
          ListTile(
            title: Text('FireBaseMessage'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyFireBaseMessageApp(),
                )),
          ),
        ],
      ),
    );
  }
}
