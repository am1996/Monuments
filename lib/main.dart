import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/screens/DetailsScreen.dart';
import 'package:flutterapp1/Random/Arguments.dart';
import 'componenets/Styles.dart';
import 'screens/HomePageScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      title: 'Monuments',
      initialRoute: '/',
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Arguments args = settings.arguments;
      print(args);
      Widget screen;
      String route = settings.name;
      switch (route) {
        case "/":
          screen = HomePageScreen();
          break;
        case "/details":
          screen = DetailsScreen(args.id);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(title: TitleTextStyle, body1: BodyTextStyle));
  }
}
