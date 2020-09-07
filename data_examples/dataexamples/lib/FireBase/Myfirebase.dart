import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyFireBase extends StatelessWidget {
  final CollectionReference cr =
      FirebaseFirestore.instance.collection('albums');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Photos p = Photos(
                albumId: 1,
                id: 3,
                thumbnailUrl: 'https://via.placeholder.com/150/771796',
                title: 'Robot',
                url: 'https://via.placeholder.com/150/771796',
              );
              var data = p.mapPhotos();
              cr.add(data);
            },
          ),
        ],
      ),
      body: StreamBuilder(
        stream: cr.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data.length);
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return photosList(snapshot.data.documents[index]);
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Widget photosList(DocumentSnapshot document) {
  print(document.data());
  return Container(
    child: Column(
      children: [
        Image.network(
          document.data()['thumbnailUrl'],
          fit: BoxFit.fill,
        ),
        ButtonBar(alignment: MainAxisAlignment.center, children: [
          RaisedButton(
            onPressed: () {
              Photos p = Photos(
                albumId: 1,
                id: 3,
                thumbnailUrl: 'https://via.placeholder.com/150/771796',
                title: 'Robot',
                url: 'https://via.placeholder.com/150/771796',
              );
              var data = p.mapPhotos();
              document.reference.update(data);
            },
            child: Text('Update'),
          ),
          RaisedButton(
            onPressed: () {
              document.reference.delete();
            },
            child: Text('Delete'),
          ),
        ])
      ],
    ),
  );
}

class Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photos({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  mapPhotos() {
    return {
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl
    };
  }
}
