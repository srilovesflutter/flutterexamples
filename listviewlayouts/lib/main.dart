import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
              appBar: AppBar(
                  title: Text('ListView Demo'),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        text: 'ListView',
                      ),
                      Tab(
                        text: 'ListView.builder',
                      ),
                      Tab(
                        text: 'ListView.custom',
                      ),
                      Tab(
                        text: 'ListView.seperated',
                      ),
                    ],
                    isScrollable: true,
                  )),
              body: TabBarView(children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  children: List.generate(100, (index) {
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: ListTile(
                          leading: const Icon(Icons.account_circle,
                              size: 40.0, color: Colors.white30),
                          title: Text('MainItem $index'),
                          subtitle: Text('SubText $index'),
                        ),
                      ),
                      color: Colors.blue[400],
                      margin: EdgeInsets.all(1.0),
                    );
                  }),
                ),
                ListView.builder(
                  itemCount: 50,
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  itemBuilder: (BuildContext context, int index) {
                    //if (index < 50)
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: ListTile(
                          leading: const Icon(Icons.account_circle,
                              size: 40.0, color: Colors.white30),
                          title: Text('MainItem $index'),
                          subtitle: Text('SubText $index'),
                        ),
                      ),
                      color: Colors.blue[400],
                      margin: EdgeInsets.all(1.0),
                    );
                  },
                ),
                ListView.custom(
                  childrenDelegate:
                      SliverChildListDelegate(List.generate(100, (index) {
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: ListTile(
                          leading: const Icon(Icons.account_circle,
                              size: 40.0, color: Colors.white30),
                          title: Text('MainItem $index'),
                          subtitle: Text('SubText $index'),
                        ),
                      ),
                      color: Colors.blue[400],
                      margin: EdgeInsets.all(1.0),
                    );
                  })),
                ),
                ListView.separated(
                  itemCount: 50,
                  separatorBuilder: (BuildContext context, int index) =>
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: ListTile(
                            leading: const Icon(Icons.account_circle,
                                size: 40.0, color: Colors.grey),
                            title: Text('SeperatorItem $index'),
                            subtitle: Text('SeperatorSubText $index'),
                          ),
                        ),
                        color: Colors.amber[100],
                        margin: EdgeInsets.all(1.0),
                      ),
                  itemBuilder: (BuildContext context, int index) {
                    //if (index < 50)
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: ListTile(
                          leading: const Icon(Icons.account_circle,
                              size: 40.0, color: Colors.white30),
                          title: Text('MainItem $index'),
                          subtitle: Text('SubText $index'),
                        ),
                      ),
                      color: Colors.blue[400],
                      margin: EdgeInsets.all(1.0),
                    );
                  },
                ),
              ]))),
    );
  }
}

void main() {
  runApp(MyApp());
}