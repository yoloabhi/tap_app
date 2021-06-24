import 'package:login_example/utils/const.dart';
import 'package:login_example/widgets/card_courses.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('EVENTS'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            CardCourses(
              image: Image.asset("images/icon_1.png", width: 40, height: 40),
              color: Constants.lightPink,
              title: "Microsoft",
              hours: "10 July to 25 July 2021",
              progress: "Off-Campus",
              percentage: 1,
            ),
            CardCourses(
              image: Image.asset("images/icon_2.png", width: 40, height: 40),
              color: Constants.lightYellow,
              title: "SAP Labs",
              hours: "18 July to 1 Aug 2021",
              progress: "On-Campus",
              percentage: 1,
            ),
            CardCourses(
              image: Image.asset("images/icon_3.png", width: 40, height: 40),
              color: Constants.lightViolet,
              title: "Cisco",
              hours: "10 Aug to 2 Sept 2021",
              progress: "On-Campus",
              percentage: 1,
            ),
          ],
        ),
      ),
    );
  }
}
