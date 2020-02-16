import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Fluttercentral',
    home: MyApp(),
  ));
}

List<Choice> choices = const <Choice>[
  const Choice(
      id: 1,
      title: 'MacBook Pro',
      date: '1 June 2019',
      description:
          'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
      imglink:
          'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  const Choice(
      id: 2,
      title: 'MacBook Air',
      date: '1 June 2016',
      description:
          'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
      imglink:
          'https://images.unsplash.com/photo-1499673610122-01c7122c5dcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  const Choice(
      id: 3,
      title: 'iMac',
      date: '1 June 2019',
      description:
          'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
      imglink:
          'https://images.unsplash.com/photo-1517059224940-d4af9eec41b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
  const Choice(
      id: 4,
      title: 'Mac Mini',
      date: '1 June 2017',
      description:
          'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
      imglink:
          'https://www.apple.com/v/mac-mini/f/images/shared/og_image__4mdtjbfhcduu_large.png?201904170831'),
  const Choice(
      id: 5,
      title: 'Mac Pro',
      date: '1 June 2018',
      description:
          'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
      imglink:
          'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Fluttercentral";

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: List.generate(choices.length, (index) {
              return Center(
                child: ChoiceCard(choice: choices[index], item: choices[index]),
              );
            })));
  }
}

class Choice {
  final int id;
  final String title;
  final String date;
  final String description;
  final String imglink;

  const Choice(
      {this.id, this.title, this.date, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleReadPage(index: choices.indexOf(choice))));
      },
      child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(choice.imglink)),
              new Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(choice.title,
                        style: Theme.of(context).textTheme.title),
                    Text(choice.date,
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),
                    Text(choice.description.substring(0, 100) + '...'),
                  ],
                ),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
    );
  }
}

class ArticleReadPage extends StatelessWidget {
  final int index;

  const ArticleReadPage({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChoiceCardRead(choice: choices[index]),
    );
  }
}

class ChoiceCardRead extends StatelessWidget {
  const ChoiceCardRead(
      {Key key,
      this.choice})
      : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView (
          child: Container(
        child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(choice.imglink)),
                new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(choice.title, style: Theme.of(context).textTheme.title),
                      Text(choice.date,
                          style: TextStyle(color: Colors.black.withOpacity(0.5))),
                      Text(choice.description),
                    ],
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )),
      ),
    );
  }
}
