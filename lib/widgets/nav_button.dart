import 'package:flutter_web/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;
  final Color splashColor;
  final bool isSelected;
  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange,
      this.splashColor = Colors.orangeAccent,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button = RaisedButton(
      color: color,
      child: Text(text),
      onPressed: onPressed,
      splashColor: splashColor,
    );
    if (!isSelected) {
      button = OutlineButton(
        child: Text(text),
        borderSide: BorderSide(
          color: color,
        ),
        onPressed: onPressed,
        highlightedBorderColor: color,
        splashColor: splashColor,
      );
    }

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: button,
    );
  }
}
