import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyFireBaseMessageApp extends StatelessWidget {
  final TextEditingController messagecontroller = TextEditingController();
  final CollectionReference cr =
      FirebaseFirestore.instance.collection('messages');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Messaging App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: StreamBuilder(
                  stream: cr.snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        reverse: true,
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(snapshot.data.documents[index]
                                    .data()['username']),
                                Text(": "),
                                Text(snapshot.data.documents[index]
                                    .data()['messagetext']),
                              ],
                            ),
                          );
                        },
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: messagecontroller,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Message m = Message(
                      username: 'Srikanth',
                      messagetext: messagecontroller.text);

                  cr.add(m.mapMessages());
                },
                child: Text('Send'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Message {
  final String username;
  final String messagetext;

  Message({this.username, this.messagetext});

  mapMessages() {
    return {'username': username, 'messagetext': messagetext};
  }
}
