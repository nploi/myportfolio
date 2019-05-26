import 'package:flutter_web/material.dart';
import 'responsive_widget.dart';

class NavHeader extends StatelessWidget {
  final List<Widget> children;

  const NavHeader({Key key, this.children}) : super(key: key);

  Widget build(BuildContext context) {
    var style = TextStyle(fontWeight: FontWeight.bold);
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Nguyen Phuc ', style: style),
              Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Loi', style: style),
                ),
              )
            ],
          ),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: children,
            )
        ],
      ),
    );
  }
}
