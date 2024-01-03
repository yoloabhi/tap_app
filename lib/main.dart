import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(TAPApp());

class TAPApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: LoginPage(),
    );
  }
}
