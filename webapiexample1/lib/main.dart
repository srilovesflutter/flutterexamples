import 'package:flutter/material.dart';
import 'package:webapiexample1/mywebapi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WebAPI Example'),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FutureBuilder(
              future: fetchphotos(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return Center(child: CircularProgressIndicator());
                return MyPhotos(photos: snapshot.data);
              },
            )),
      ),
    );
  }
}

class MyPhotos extends StatelessWidget {
  final List<Photo> photos;

  const MyPhotos({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.builder(
          itemCount: photos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(photos[index].title),
                leading: Image.network(photos[index].thumbnailUrl),
              ),
            );
          },
        ));
  }
}
