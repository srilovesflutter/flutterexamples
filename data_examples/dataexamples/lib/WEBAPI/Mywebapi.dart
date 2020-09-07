import 'package:dataexamples/WEBAPI/Mywebapioperations.dart';
import 'package:flutter/material.dart';

class MyWebApi extends StatefulWidget {
  const MyWebApi({Key key}) : super(key: key);

  @override
  _MyWebApiState createState() => _MyWebApiState();
}

class _MyWebApiState extends State<MyWebApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebAPI App'),
      ),
      body: FutureBuilder<List<Photos>>(
        future: fetchphotos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data.length);
            return PhotosList(photos: snapshot.data);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class PhotosList extends StatelessWidget {
  final List<Photos> photos;

  const PhotosList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context, index) {
        //print(photos[index].thumbnailUrl);
        return Image.network(
          photos[index].thumbnailUrl,
          fit: BoxFit.fill,
        );
      },
    );
  }
}
