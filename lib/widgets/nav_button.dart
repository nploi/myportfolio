import 'package:flutter_web/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlineButton(
        child: Text(text),
        borderSide: BorderSide(
          color: color,
        ),
        onPressed: onPressed,
        highlightedBorderColor: color,
      ),
    );
  }
}
