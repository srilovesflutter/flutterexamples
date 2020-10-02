import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

ContactsAPI contactsAPIFromJson(String str) =>
    ContactsAPI.fromJson(json.decode(str));

class ContactsAPI {
  final ContactsData data;

  ContactsAPI({this.data});

  factory ContactsAPI.fromJson(Map<String, dynamic> json) {
    print('ContactsAPI');
    print(json);
    return ContactsAPI(data: ContactsData.fromJson(json['data']));
  }
}

class ContactsData {
  final Contacts data;

  ContactsData({this.data});

  factory ContactsData.fromJson(Map<String, dynamic> json) {
    print('ContactsData');
    print(json);
    return ContactsData(data: Contacts.fromJson(json['contacts']));
  }
}

class Contacts {
  final Primarycontacts primary;
  final List<Regional> regional;

  Contacts({this.primary, this.regional});

  factory Contacts.fromJson(Map<String, dynamic> json) {
    var regional = new List<Regional>();

    json['regional'].forEach((e) => regional.add(Regional.fromJson(e)));

    return Contacts(
        primary: Primarycontacts.fromJson(json['primary']), regional: regional);
  }
}

class Regional {
  final String loc;
  final String number;

  Regional({this.loc, this.number});

  factory Regional.fromJson(Map<String, dynamic> json) {
    print('Regional');
    print(json);
    return Regional(loc: json['loc'], number: json['number']);
  }
}

class Primarycontacts {
  final String number;
  final String numbertollfree;
  final String email;
  final String twitter;
  final String facebook;
  final List<String> media;

  Primarycontacts(
      {this.number,
      this.numbertollfree,
      this.email,
      this.twitter,
      this.facebook,
      this.media});

  factory Primarycontacts.fromJson(Map<String, dynamic> json) {
    print('Primarycontacts');
    print(json['media'].cast<String>());
    return Primarycontacts(
      number: json['number'],
      numbertollfree: json['number-tollfree'],
      email: json['email'],
      twitter: json['twitter'],
      facebook: json['facebook'],
      media: json['media'].cast<String>(),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<ContactsAPI> fetchUpdate() async {
    http.Client client = http.Client();
    final jsonString =
        await client.get('https://api.rootnet.in/covid19-in/contacts');

    //final response = await rootBundle.loadString('lib/testJson/data.json');
    final http.Response response = http.Response(jsonString.body, 200);
    ContactsAPI payload = contactsAPIFromJson(response.body);
    return payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: fetchUpdate(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            print(snapshot.data.data.data.regional);
            return RegionalList(
                regionalcontacts: snapshot.data.data.data.regional);
          },
        ));
  }
}

class RegionalList extends StatelessWidget {
  final List<Regional> regionalcontacts;

  const RegionalList({Key key, this.regionalcontacts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: regionalcontacts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(regionalcontacts[index].loc),
            subtitle: Text(regionalcontacts[index].number),
          ),
        );
      },
    );
  }
}
