//import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todoappexample1/todo.dart';

opendatabase() async {
  final database =
      openDatabase(join(await getDatabasesPath(), 'todoitemsdb.db'), version: 1,
          onCreate: (db, version) {
    return db.execute("Create table todoitems(description TEXT)");
  });

  //print(await File(join(await getDatabasesPath(), 'todoitemsdb.db')).exists());

  return database;
}

inserttodotem(ToDo todo) async {
  final db = await opendatabase();
  print(todo.converttotablevalues());
  db.insert('todoitems', todo.converttotablevalues());
}

Future<List<ToDo>> readtodoitem() async {
  final db = await opendatabase();
  List<Map<String, dynamic>> todolistvalues = await db.query('todoitems');

  print(todolistvalues);

  return List.generate(
    todolistvalues.length,
    (index) => ToDo(description: todolistvalues[index]['description']),
  );
}

updatetodoitem(ToDo todo, String olddescription) async {
  final db = await opendatabase();
  print(todo.description);
  await db.update('todoitems', todo.converttotablevalues(),
      where: "description = ?", whereArgs: [olddescription]);
}

deletetodotem(String tododescription) async {
  final db = await opendatabase();
  db.delete('todoitems',
      where: "description = ?", whereArgs: [tododescription]);
}
