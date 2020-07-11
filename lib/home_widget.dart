import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'random_color_generator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color _backgroundColor = CupertinoColors.white;
  Color _textColor = CupertinoColors.black;

  void changeBackgroundColor() {
    setState(() {
      final generator = RandomColorGenerator();
      _backgroundColor = generator.generate();
      _textColor = generator.generate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: CupertinoPageScaffold(
          child: Center(
              child: RichText(text: TextSpan(text: "Hey There", style: TextStyle(color: _textColor,fontSize: 20)))
          ),
          backgroundColor: _backgroundColor
        ),
        onTap: changeBackgroundColor
    );
  }

}