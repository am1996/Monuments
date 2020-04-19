import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _path;
  ImageBanner(this._path);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
        constraints: BoxConstraints.expand(height: 300),
        child: Image.asset(_path, fit: BoxFit.cover));
  }
}
