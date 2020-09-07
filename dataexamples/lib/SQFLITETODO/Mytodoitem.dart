import 'package:dataexamples/SQFLITETODO/Mysqlfliteoperations.dart';
import 'package:dataexamples/SQFLITETODO/Mytodoitemupdate.dart';
import 'package:flutter/material.dart';

class MyToDoItem extends StatelessWidget {
  final ToDo todoitem;

  const MyToDoItem({Key key, this.todoitem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(todoitem.id.toString()),
            SizedBox(
              height: 20.0,
            ),
            Text(todoitem.description),
            SizedBox(
              height: 20.0,
            ),
            Text(todoitem.date),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                deletetodoitem(todoitem.id);
                Navigator.pop(context);
              },
              child: Text('Delete'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MyToDoItemUpdate(todoitem: todoitem),
                    ));
              },
              child: Text('Update'),
            )
          ],
        ),
      ),
    );
  }
}
