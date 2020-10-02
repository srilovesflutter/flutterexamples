//https://jsonplaceholder.typicode.com/albums/1/photos
//  {
//     "albumId": 1,
//     "id": 1,
//     "title": "accusamus beatae ad facilis cum similique qui sunt",
//     "url": "https://via.placeholder.com/600/92c952",
//     "thumbnailUrl": "https://via.placeholder.com/150/92c952"
//   },

import 'dart:convert';
import 'package:http/http.dart' as http;

class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});
}

fetchphotos() async {
  http.Client client = http.Client();
  final returneddata =
      await client.get('https://jsonplaceholder.typicode.com/albums/1/photos');
  final parsed = jsonDecode(returneddata.body).cast<Map<String, dynamic>>();
  print(parsed);
}
