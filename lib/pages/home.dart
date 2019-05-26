import 'package:flutter_web/material.dart';
import 'package:myportfolio/widgets/nav_header.dart';

import 'profile_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NavHeader(),
      ),
      body: ProfilePage(),
    );
  }
}