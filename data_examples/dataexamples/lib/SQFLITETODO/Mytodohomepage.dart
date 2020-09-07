import 'package:dataexamples/SQFLITETODO/Mynewtodoitem.dart';
import 'package:dataexamples/SQFLITETODO/Mysqlfliteoperations.dart';
import 'package:dataexamples/SQFLITETODO/Mytodoitem.dart';
import 'package:flutter/material.dart';

class MyTodoHome extends StatefulWidget {
  const MyTodoHome({Key key}) : super(key: key);

  @override
  _MyTodoHomeState createState() => _MyTodoHomeState();
}

class _MyTodoHomeState extends State<MyTodoHome> {
  Future<List<ToDo>> todoitemslist;

  @override
  void initState() {
    opendatabase();
    todoitemslist = gettodoitemslist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ToDo App'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewToDoItem(),
                  )),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Upcoming Items'),
            ),
            FutureBuilder<List<ToDo>>(
              future: todoitemslist,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data.length);
                  return Container(
                    height: 200.0,
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(snapshot.data[index].description),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MyToDoItem(todoitem: snapshot.data[index]),
                              )),
                        );
                      },
                    ),
                  );
                }
                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
