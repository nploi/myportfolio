import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:myportfolio/widgets/responsive_widget.dart';

class SkillsPage extends StatefulWidget {
  SkillsPage({Key key}) : super(key: key);

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Center(
          child: Text('Skills'),
        ));
  }

  Widget buildContainer({String name, double value}) {
    return Container(
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.05
          : MediaQuery.of(context).size.width * 0.05,
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.05
          : MediaQuery.of(context).size.width * 0.05,
      decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            name,
            textScaleFactor: 1,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '$value%',
            textScaleFactor: 1,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
