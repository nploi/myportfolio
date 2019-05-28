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
        onPageChanged: _onPageChanged,
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
        isSelected: _currentIndex == 0,
        onPressed: () {
          _selectPage(0);
        },
      ),
      NavButton(
        text: "skills",
        isSelected: _currentIndex == 1,
        onPressed: () {
          _selectPage(1);
        },
      ),
      NavButton(
        text: "work",
        isSelected: _currentIndex == 2,
        onPressed: () {
          _selectPage(2);
        },
      ),
      NavButton(
        text: "contact",
        isSelected: _currentIndex == 3,
        onPressed: () {
          _selectPage(3);
        },
      ),
    ];
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _selectPage(int index) {
    setState(() {
      _pageController?.animateToPage(index,
          duration: const Duration(milliseconds: 1000), curve: Curves.ease);
    });
  }
}
