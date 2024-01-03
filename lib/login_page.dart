import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'reusable_card.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0), // <= NEW
                    Text(
                      'Enter credentials',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 20.0), // <= NEW
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: "Email Address"),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: "Password"),
                      ),
                    ),
                    SizedBox(height: 20.0), // <= NEW
                    RaisedButton(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Text("LOGIN"),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
