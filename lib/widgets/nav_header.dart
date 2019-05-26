import 'package:flutter_web/material.dart';

import 'nav_button.dart';
import 'responsive_widget.dart';

class NavHeader extends StatelessWidget {
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
              children: <Widget>[
                NavButton(
                  text: "about",
                  onPressed: () {},
                ),
                NavButton(
                  text: "work",
                  onPressed: () {},
                ),
                NavButton(
                  text: "contact",
                  onPressed: () {},
                ),
              ],
            )
        ],
      ),
    );
  }
}
