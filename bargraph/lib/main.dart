import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar Graph Demo',
      debugShowCheckedModeBanner: false,
      home: BarGraphDemo(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}

class BarGraphDemo extends StatefulWidget {
  BarGraphDemo({Key key}) : super(key: key);

  @override
  _BarGraphDemoState createState() => _BarGraphDemoState();
}

class _BarGraphDemoState extends State<BarGraphDemo> {
  List<AppDownloads> data;
  @override
  void initState() {
    super.initState();
    data = [
      AppDownloads(
        year: '2017',
        count: 178.1,
        barColor: charts.ColorUtil.fromDartColor(Colors.red),
      ),
      AppDownloads(
        year: '2018',
        count: 205.4,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue),
      ),
      AppDownloads(
        year: '2019',
        count: 258.2,
        barColor: charts.ColorUtil.fromDartColor(Colors.green),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Graph Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Card(
              child: MyBarChart(data),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Number of Mobile App Downloads in past 3 years (Data Source: Statista)',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppDownloads {
  final String year;
  final double count;
  final charts.Color barColor;

  AppDownloads({
    @required this.year,
    @required this.count,
    @required this.barColor,
  });
}

class MyBarChart extends StatelessWidget {
  final List<AppDownloads> data;

  MyBarChart(this.data);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<AppDownloads, String>> series = [
      charts.Series(
          id: 'AppDownloads',
          data: data,
          domainFn: (AppDownloads downloads, _) => downloads.year,
          measureFn: (AppDownloads downloads, _) => downloads.count,
          colorFn: (AppDownloads downloads, _) => downloads.barColor)
    ];

    return charts.BarChart(
      series,
      animate: true,
      barGroupingType: charts.BarGroupingType.groupedStacked,
    );
  }
}
