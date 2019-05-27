import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:myportfolio/widgets/responsive_widget.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({Key key}) : super(key: key);

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
            child: Column(
              children: <Widget>[buildTextHeader('Work')],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextHeader(String text) {
    double textScaleFactor = 2;
    if (ResponsiveWidget.isSmallScreen(context)) {
      textScaleFactor = 1.5;
    }
    return Text(
      text,
      textScaleFactor: textScaleFactor,
    );
  }
}
