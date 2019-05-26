import 'package:flutter_web/material.dart';
import 'responsive_widget.dart';

class NavHeader extends StatelessWidget {
  final List<Widget> children;

  const NavHeader({Key key, this.children}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: children,
            )
        ],
      ),
    );
  }
}
