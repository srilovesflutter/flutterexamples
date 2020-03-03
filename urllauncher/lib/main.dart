import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var title = "UrlLauncher Demo";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: _launchurl,
              child: Text('Goto FlutterCentral'),
            ),
            RaisedButton(
              onPressed: _createEmail,
              child: Text('Email to FlutterCentral'),
            ),
            RaisedButton(
              onPressed: _makeCall,
              child: Text('Make a Call'),
            ),
            RaisedButton(
              onPressed: _sendSMS,
              child: Text('Send an SMS'),
            ),
          ],
        ),
      ),
    );
  }

  void _launchurl() async{
    const url = 'https://fluttercentral.com';
    if(await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }    
  }

  void _createEmail() async{
    const emailaddress = 'mailto:admin@fluttercentral.com?subject=Sample Subject&body=This is a Sample email';

    if(await canLaunch(emailaddress)) {
      await launch(emailaddress);
    }  else {
      throw 'Could not Email';
    }   
  }

  void _makeCall() async{
    const phonenumber = "tel:9999999";

    if(await canLaunch(phonenumber)) {
      await launch(phonenumber);
    } else {
      throw 'Could not call';
    }
  }

  void _sendSMS() async{
    const phonenumber = "sms:9999999";

    if(await canLaunch(phonenumber)) {
      await launch(phonenumber);
    } else {
      throw 'Could not SMS';
    }
  }
}