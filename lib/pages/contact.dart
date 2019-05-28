import 'package:flutter_web/material.dart';
import 'package:flutter_web/painting.dart';
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
            child: Column(
              children: <Widget>[
                buildForm(),
                SizedBox(
                  height: 100,
                ),
                buildTextHeader('CONTACT INFORMATION'),
                Divider(),
                buildInfo(name: 'Email', info: 'nploi1998@gmail.com'),
                SizedBox(
                  height: 50,
                ),
                buildTextHeader('ABOUT THIS WEBSITE'),
                Divider(),
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
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildTextHeader('CONTACT ME'),
          SizedBox(
            width: 50,
            child: Divider(),
          ),
          TextField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Your name',
            ),
            cursorColor: Colors.orange,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Your email address',
            ),
            cursorColor: Colors.orange,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Your phone number',
            ),
            cursorColor: Colors.orange,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Message',
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            cursorColor: Colors.orange,
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Send"),
            color: Colors.red,
            onPressed: () {},
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }

  Widget buildInput(String hintText) {
    return TextField();
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
