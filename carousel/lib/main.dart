import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carousel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Carousel Demo'),
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
  List<String> imageLinks = [
    'https://homepages.cae.wisc.edu/~ece533/images/fruits.png',
    'https://homepages.cae.wisc.edu/~ece533/images/cat.png',
    'https://homepages.cae.wisc.edu/~ece533/images/peppers.png',
    'https://homepages.cae.wisc.edu/~ece533/images/tulips.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              height: 400.0,
              items: imageLinks.map((imageLink) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.network(
                          imageLink,
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),

              reverse:
                  false, //is false by default (reverses the order of items)
              enableInfiniteScroll:
                  true, //is true by default (it scrolls back to item 1 after the last item)
              autoPlay: true, //is false by default
              initialPage:
                  0, //allows you to add set the first item to be displayed
              scrollDirection: Axis.horizontal, //can be set to Axis.vertical
              pauseAutoPlayOnTouch: Duration(
                  seconds: 5), //it pauses the sliding if carousel is touched,
              onPageChanged: (int pageNumber) {
                //this triggers everytime a slide takes place
              },
              viewportFraction: 0.8,
              enlargeCenterPage: true, //is false by default
              aspectRatio:
                  16 / 9, //if height is not specified, then this value is used
            )
          ]
        )
      )
    );
  }
}
