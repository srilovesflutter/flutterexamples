import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

//https://jsonplaceholder.typicode.com/photos

Future<List<Photos>> fetchphotos() async {
  http.Client client = http.Client();
  final returneddata =
      await client.get('https://fluttertest-6aa83.firebaseio.com/.json');

  return compute(parsePhotos, returneddata.body);
}

List<Photos> parsePhotos(String returneddata) {
  final parsed = jsonDecode(returneddata).cast<Map<String, dynamic>>();

  return parsed.map<Photos>((json) => Photos.fromJson(json)).toList();

  //print(parsed);

  // List<Photos> photosList = List.generate(
  //     parsed.length,
  //     (index) => Photos(
  //         albumId: parsed[index]['albumId'],
  //         id: parsed[index]['id'],
  //         title: parsed[index]['title'],
  //         url: parsed[index]['url'],
  //         thumbnailUrl: parsed[index]['thumbnailUrl']));

  // print(photosList[1].title);
  // return photosList;
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

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}
