import 'package:flutter/material.dart';

import './HelloWorldText.dart';
import './helloWorldButton.dart';

final _textSet = ['hello', "world", "!!"];

class HelloWorldView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HelloWorldViewState();
  }
}

class _HelloWorldViewState extends State<HelloWorldView> {
  var _textIndex = 0;

  void onPress() {
    print("press");
  }

  void onLongPress(int target) {
    setState(() {
      _textIndex = target;
    });
    print("long press");
  }

  var actions = [
    {"act":}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World app'),
        ),
        body: Column(children: [
          HelloWorldText(_textSet[_textIndex]),
          HelloWorldButton(onPress, () => {onLongPress(0)}, "Text 1"),
          HelloWorldButton(onPress, () => {onLongPress(1)}, "Text 2"),
          HelloWorldButton(onPress, () => {onLongPress(2)}, "Text 3"),
        ]),
      ),
    );
  }
}
