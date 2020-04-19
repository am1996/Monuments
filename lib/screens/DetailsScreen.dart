import 'package:flutterapp1/componenets/ImageBanner.dart';
import 'package:flutterapp1/componenets/TextSection.dart';
import 'package:flutterapp1/models/LocationFactory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int _locationId;
  DetailsScreen(this._locationId);
  @override
  Widget build(BuildContext context) {
    var loc =
        locations.where((item) => item.id == this._locationId).toList()[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          ImageBanner(loc.image),
          TextSection(loc.name, loc.description)
        ],
      )),
    );
  }
}
