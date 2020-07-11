import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
      debugShowCheckedModeBanner: false
    );
  }
}





