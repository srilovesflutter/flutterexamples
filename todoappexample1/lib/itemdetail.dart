import 'package:flutter/material.dart';
import 'package:todoappexample1/sqfliteoperations.dart';
import 'package:todoappexample1/updatenewitem.dart';

class ToDoItemDetail extends StatelessWidget {
  final String todoitemdescription;

  const ToDoItemDetail({Key key, this.todoitemdescription}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo item detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$todoitemdescription'),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return UpdateNewItem(
                              todoitemdescription: todoitemdescription);
                        },
                      ),
                    );
                  },
                  child: Text('Update'),
                ),
                RaisedButton(
                  onPressed: () {
                    deletetodotem(todoitemdescription);
                  },
                  child: Text('Delete'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
