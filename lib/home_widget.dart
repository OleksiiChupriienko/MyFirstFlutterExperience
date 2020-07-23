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
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Sample'),
        ),
        child: CupertinoButton(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Text(
                    'Hey there',
                    style: TextStyle(color: _textColor, fontSize: 25),
                  ),
                )),
            color: _backgroundColor,
            borderRadius: BorderRadius.all(Radius.zero),
            pressedOpacity: 1.0,
            onPressed: changeBackgroundColor));
  }
}
