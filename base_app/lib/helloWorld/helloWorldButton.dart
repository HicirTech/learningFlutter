import "package:flutter/material.dart";

const Set<MaterialState> interactiveStates = <MaterialState>{
  MaterialState.pressed,
  MaterialState.hovered,
  MaterialState.focused,
};

class HelloWorldButton extends StatelessWidget {
  final Function onPress;
  final Function onLongPress;
  final String displayText;

  HelloWorldButton(this.onPress, this.onLongPress, this.displayText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black),
            backgroundColor: MaterialStateProperty.resolveWith((states) =>
                !states.any(interactiveStates.contains)
                    ? Colors.blue
                    : Colors.amber)),
        onLongPress: onLongPress,
        child: Text(displayText),
      ),
    );
  }
}
