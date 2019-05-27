import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:myportfolio/widgets/responsive_widget.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: buildForm(),
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Form(
      child: Column(
        children: <Widget>[
          buildTextHeader('CONTACT ME'),
          SizedBox(
            width: 50,
            child: Divider(),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Your name',
            ),
            textAlign: TextAlign.center,
            cursorColor: Colors.orange,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Your email address',
            ),
            textAlign: TextAlign.center,
            cursorColor: Colors.orange,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Your phone number',
            ),
            textAlign: TextAlign.center,
            cursorColor: Colors.orange,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Message',
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            cursorColor: Colors.orange,
          ),
          SizedBox(
            height: 20,
          ),
          IconButton(
            color: Colors.orange,
            iconSize: 30,
            icon: Icon(
              Icons.send,
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 100,
          ),
          buildTextHeader('CONTACT INFORMATION'),
          SizedBox(
            width: 50,
            child: Divider(),
          ),
          buildInfo(name: 'Email', info: 'nploi1998@gmail.com'),
          SizedBox(
            height: 50,
          ),
          buildTextHeader('ABOUT THIS WEBSITE'),
          SizedBox(
            width: 50,
            child: Divider(),
          ),
          Text(
              "I'm forked from https://github.com/iampawan/myportfolio\nWrited by flutter for web"),
          SizedBox(
            height: 50,
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

  Widget buildTextHeader(String text) {
    double textScaleFactor = 1.5;
    if (ResponsiveWidget.isSmallScreen(this.context)) {
      textScaleFactor = 1;
    }
    return Text(
      text,
      textScaleFactor: textScaleFactor,
    );
  }

  Widget buildInfo({String name, String info}) {
    double textScaleFactor = 1.2;
    if (ResponsiveWidget.isSmallScreen(context)) {
      textScaleFactor = 1;
    }
    return Text(
      '$name: $info',
      textScaleFactor: textScaleFactor,
    );
  }
}
