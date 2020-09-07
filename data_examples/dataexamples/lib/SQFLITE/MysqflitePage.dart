import 'package:dataexamples/SQFLITE/Counter.dart';
import 'package:dataexamples/SQFLITE/Mysqlfliteoperations.dart';
import 'package:flutter/material.dart';

class MysqflitePage extends StatefulWidget {
  @override
  _MysqflitePageState createState() => _MysqflitePageState();
}

class _MysqflitePageState extends State<MysqflitePage> {
  Counter counter = Counter();

  Future<List<Map<String, dynamic>>> counterlist;

  @override
  void initState() {
    opendatabase();
    counterlist = counterList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('sqflite'),
        ),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Clicked ${counter.num} times'),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    counter.num++;
                  });
                },
                child: Text('Click here'),
              ),
              RaisedButton(
                onPressed: () {
                  inserttocounterTracker(counter);
                  setState(() {
                    counterlist = counterList();
                  });
                },
                child: Text('Insert Record'),
              ),
              RaisedButton(
                onPressed: () {
                  dropdatabase();
                },
                child: Text('Drop table'),
              ),
            ],
          ),
          FutureBuilder<List<Map<String, dynamic>>>(
            future: counterlist,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var counterlist = List.generate(snapshot.data.length,
                    (index) => Counter(num: snapshot.data[index]['num']));
                return Column(
                  children: [
                    Text('Table List'),
                    Container(
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Number:'),
                              Text('${counterlist[index].num}'),
                            ],
                          ));
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          )
        ]),
      ),
    );
  }
}
