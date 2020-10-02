import 'package:flutter/material.dart';
import 'package:todoappexample1/addnewitem.dart';
import 'package:todoappexample1/itemdetail.dart';
import 'package:todoappexample1/sqfliteoperations.dart';
import 'package:todoappexample1/todo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  opendatabase();
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<List<ToDo>> listoftodoitems;

  @override
  void initState() {
    listoftodoitems = readtodoitem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ToDo Demo App'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                //Add new items from here
                return Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddNewItem();
                    },
                  ),
                );
              },
            ),
          ],
        ),
        body: FutureBuilder(
            future: listoftodoitems,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();

              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index].description),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ToDoItemDetail(
                          todoitemdescription: snapshot.data[index].description,
                        ),
                      ),
                    ),
                  );
                },
              );
            }));
  }
}
