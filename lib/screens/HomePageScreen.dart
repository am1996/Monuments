import 'package:flutterapp1/Random/Arguments.dart';
import '../models/LocationFactory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    var widgets = locations.map((location) => GestureDetector(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(location.image),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              location.name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ) /* add child content here */,
          ),
          onTap: () => _goToDetail(context, location.id),
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text("Monuments"),
      ),
      body: ListView(children: []..addAll(widgets)),
    );
  }

  void _goToDetail(BuildContext context, int id) {
    Navigator.pushNamed(context, "/details", arguments: Arguments(id));
  }
}
