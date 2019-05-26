import 'package:flutter_web/material.dart';
import 'package:myportfolio/pages/contact.dart';
import 'package:myportfolio/pages/skills.dart';
import 'package:myportfolio/pages/work.dart';
import 'package:myportfolio/widgets/nav_button.dart';
import 'package:myportfolio/widgets/nav_header.dart';
import 'package:myportfolio/widgets/responsive_widget.dart';

import 'profile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  PageController _pageController;
  int _currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    _scrollController = ScrollController(initialScrollOffset: 10.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NavHeader(
          children: buildRowNavButton(),
        ),
      ),
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: buildRowNavButton()),
            )
          : null,
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          ProfilePage(),
          SkillsPage(),
          WorkPage(),
          ContactPage()
        ],
      ),
    );
  }

  List<Widget> buildRowNavButton() {
    return <Widget>[
      NavButton(
        text: "about",
        onPressed: () {
          _selectPage(0);
        },
      ),
      NavButton(
        text: "skills",
        onPressed: () {
          _selectPage(1);
        },
      ),
      NavButton(
        text: "work",
        onPressed: () {
          _selectPage(2);
        },
      ),
      NavButton(
        text: "contact",
        onPressed: () {
          _selectPage(3);
        },
      ),
    ];
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
      _scrollController?.animateTo(100 * index / 2,
          duration: const Duration(milliseconds: 1000), curve: Curves.ease);
    });
  }

  void _selectPage(int index) {
    setState(() {
      _pageController?.animateToPage(index,
          duration: const Duration(milliseconds: 1000), curve: Curves.ease);
    });
  }

  _nextSlider() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 1000), curve: Curves.linear);
  }

  _prevSlider() {
    _pageController.previousPage(
        duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
  }
}
