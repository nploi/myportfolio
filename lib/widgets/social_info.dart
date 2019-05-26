import 'package:flutter_web/material.dart';

import 'nav_button.dart';
import 'responsive_widget.dart';

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavButton(
                text: "Github",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Linkedin",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Facebook",
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
          Text(
            "Nguyen Phuc Loi ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          NavButton(
            text: "Github",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "Facebook",
            onPressed: () {},
            color: Colors.blue,
          ),
          Text(
            "Nguyen Phuc Loi ©️2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
