import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
              brightness: brightness,
              //rest of the themeData
              //you can also use conditioning here based on the current
              //brightness mode (dark or light). For ex:
              // primarySwatch: brightness == Brighness.dark ? Colors.white : Colors.black
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Exam Prep',
            theme: theme,
            home: HomeScreen(),
          );
        });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  void themeSwitch(context) {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dark & Light Theme Switcher'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            themeSwitch(context);
          },
          child: Text(Theme.of(context).brightness == Brightness.dark
              ? 'Switch to Light Mode'
              : 'Switch to Dark Mode'),
          //we can at any point check the current brightness mode (dark or light)
          // using Theme.of(context).brightness
        ),
      ),
    );
  }
}

