import 'package:login_example/utils/const.dart';
import 'package:login_example/widgets/card_courses.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('REGISTER'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            CardCourses(
              image: Image.asset("images/icon_4.png", width: 40, height: 40),
              color: Constants.lightPink,
              title: "Goldman Sachs",
              hours: "30 Aug to 25 Nov 2021",
              progress: "Off-Campus",
              percentage: 1,
            ),
          ],
        ),
      ),
    );
  }
}
