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
    return ResponsiveWidget(
      largeScreen: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: buildSkills(),
          ),
        ),
      ),
    );
  }

  Widget buildSkills() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        children: <Widget>[
          buildTextHeader('Program languages'),
          Divider(),
          buildSkill(name: 'C++', value: 7),
          buildSkill(name: 'C#', value: 6),
          buildSkill(name: 'Golang', value: 7),
          buildSkill(name: 'Java', value: 6),
          buildSkill(name: 'JavaScript', value: 6),
          SizedBox(
            height: 20,
          ),
          buildTextHeader('Soft skills'),
          Divider(),
          buildSkill(name: 'Teamwork', value: 9),
          buildSkill(name: 'Communication', value: 7),
          SizedBox(
            height: 20,
          ),
          buildTextHeader('Tools & Technologies'),
          Divider(),
          buildSkill(name: 'Git', value: 8),
          buildSkill(name: 'Linux', value: 9),
          buildSkill(name: 'Cmake', value: 8),
          SizedBox(
            height: 20,
          ),
          buildTextHeader('Other Skills'),
          Divider(),
          buildSkill(name: 'Flutter', value: 8),
          buildSkill(name: 'Algorithm', value: 6),
          buildSkill(name: 'Data structure', value: 8),
          buildSkill(name: 'MYSQL', value: 6),
        ],
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

  Widget buildSkill({String name, int value}) {
    double textScaleFactor = 1.5;
    if (ResponsiveWidget.isSmallScreen(context)) {
      textScaleFactor = 1;
    }
    return ListTile(
      title: Text(
        name,
        textScaleFactor: textScaleFactor,
      ),
      trailing: buildLevel(value),
    );
  }

  Row buildLevel(int value) {
    List<Widget> widgets = List();
    double size = 20;
    if (ResponsiveWidget.isSmallScreen(context)) {
      size = 10;
    }
    for (int index = 0; index < 10; index++) {
      var color = Colors.grey[700];
      if (index < value) {
        color = Colors.orange;
      }
      widgets.add(Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ));
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: widgets,
    );
  }
}
