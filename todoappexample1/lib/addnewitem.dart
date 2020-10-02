import 'package:flutter/material.dart';
import 'package:todoappexample1/sqfliteoperations.dart';
import 'package:todoappexample1/todo.dart';

class AddNewItem extends StatelessWidget {
  final todoitemtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: todoitemtext,
            ),
            RaisedButton(
              onPressed: () {
                //Add to Database
                print(todoitemtext.text);

                ToDo todo = ToDo(description: todoitemtext.text.toString());
                inserttodotem(todo);
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
