import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController messagingTextBox = TextEditingController();

  final CollectionReference cr =
      FirebaseFirestore.instance.collection('messages');

  @override
  Widget build(BuildContext context) {
    //print(cr.snapshots().first);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('FireBase Messaging App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: StreamBuilder(
                    stream: cr.snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) return CircularProgressIndicator();

                      return ListView.builder(
                        reverse: true,
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                Text(snapshot.data.documents[index]
                                    .data()['username']),
                                Text(': '),
                                Text(snapshot.data.documents[index]
                                    .data()['messagetext']),
                              ],
                            ),
                          );
                        },
                      );
                    }),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: messagingTextBox,
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Message m = Message(
                          username: 'Srikanth',
                          messagetext: messagingTextBox.text.toString());

                      cr.add(m.mapMessage());
                    },
                    child: Text('Send'),
                  )
                ],
              )
            ],
          )),
    );
  }
}

class Message {
  final String username;
  final String messagetext;

  Message({this.username, this.messagetext});

  mapMessage() {
    return {'username': username, 'messagetext': messagetext};
  }
}
