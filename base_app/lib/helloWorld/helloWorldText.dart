import 'package:flutter/material.dart';

class HelloWorldText extends StatelessWidget {
  final String display;

  HelloWorldText(this.display);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        display,
        style: TextStyle(
          fontSize: 25,
          color: Color.fromARGB(255, 0, 0, 255),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
