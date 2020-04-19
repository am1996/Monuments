import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _paragraph;
  TextSection(this._title, this._paragraph);
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
              child:
                  Text(this._title, style: Theme.of(context).textTheme.title)),
          Container(
              padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
              child: Text(this._paragraph,
                  style: Theme.of(context).textTheme.body1))
        ]);
  }
}
