import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/image_properties.dart';
import 'package:html/dom.dart' as dom;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTML Content Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'HTML Content Demo'),
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
  String htmlOpeningString = "<!DOCTYPE html><html><body>";

  String htmlContentString =
      "<h1>An H1 Heading</h1><p>This is a paragraph. Cillum excepteur aliquip nisi ex enim ut occaecat.</p><img src='https://flutter.dev/images/flutter-logo-sharing.png'>";

  String htmlClosingString = "</body></html>";

  String normalText = "This is normal flutter text widget!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Html(
              data: htmlOpeningString +
                  htmlContentString +
                  htmlClosingString, //html string to be parsed
              useRichText: true,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              defaultTextStyle: TextStyle(fontSize: 14),
              imageProperties: ImageProperties(
                //formatting images in html content
                height: 150,
                width: 150,
              ),
              onImageTap: (src) {
                setState(() {
                  normalText = 'You just clicked on the flutter logo!';
                });
              },
              onLinkTap: (url) {
                // open url in a webview
              },

              //(optional) used for override dom elements formatting
              customTextStyle: (dom.Node node, TextStyle baseStyle) {
                if (node is dom.Element) {
                  switch (node.localName) {
                    case 'h1':
                      return baseStyle.merge(TextStyle(fontSize: 20));
                    case 'p':
                      return baseStyle.merge(TextStyle(fontSize: 18));
                  }
                }
              },
            ),
            SizedBox(
              height: 30,
            ),
            Text(normalText)
          ],
        ),
      ),
    );
  }
}
