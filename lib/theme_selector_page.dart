import 'package:flutter/material.dart';
import 'package:theme_switcher/themes.dart';

class ThemeSelectorPage extends StatelessWidget {
  final ThemeBloc themeBloc;

  ThemeSelectorPage({Key key, this.themeBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Selector',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () =>
                    themeBloc.selectedTheme.add(_buildLightTheme()),
                child: Text(
                  'Light theme',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RaisedButton(
                  onPressed: () =>
                      themeBloc.selectedTheme.add(_buildDarkTheme()),
                  child: Text(
                    'Dark theme',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  DemoTheme _buildLightTheme() {
    return DemoTheme(
        'light',

        ThemeData(
          // Define the default Brightness and Colors
          brightness: Brightness.dark,
          primaryColor: Colors.deepOrange,
          accentColor: Colors.lightBlueAccent,

          // Define the default Font Family
          fontFamily: 'Montserrat',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        )

        /*ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.deepOrange,
          primaryColor: Colors.cyanAccent,
        )*/);
  }

  DemoTheme _buildDarkTheme() {
    return DemoTheme(
        'dark',
        ThemeData(
          // Define the default Brightness and Colors
          brightness: Brightness.dark,
          primaryColor: new Color(0xFF00FF00),
          accentColor: Colors.lightBlueAccent,

          // Define the default Font Family
          fontFamily: 'Montserrat',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        )
        /*ThemeData(
          brightness: Brightness.light,
          accentColor: Colors.lightBlueAccent,
          primaryColor: Colors.pink,
        )*/);
  }
}
