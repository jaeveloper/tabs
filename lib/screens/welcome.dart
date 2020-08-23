import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tabs/screens/home.dart';
import 'package:tabs/screens/login.dart';
import 'package:tabs/services/auth.dart';
import './register.dart';

class Welcome extends StatefulWidget {
  static const String id = "welcome";

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading
          ? Center(
              child: SpinKitDoubleBounce(
                color: Theme.of(context).primaryColor,
                size: 50.0,
              ),
            )
          : Stack(
              fit: StackFit.expand,
              children: <Widget>[
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                        ),
                        Center(
                          child: Text(
                            "Balnce",
                            style: TextStyle(
                                fontFamily: 'Billabong',
                                color: Color(0xffFFB266),
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold),
                            // style: Theme.of(context)
                            //     .textTheme
                            //     .headline
                            //     .copyWith(
                            //         color: Theme.of(context).primaryColor),
                          ),
                        ),
                        Center(
                          child: Text(
                            "The expense sharing app.",
                            style: Theme.of(context).textTheme.body1.copyWith(
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        SizedBox(height: 80),
                        // Image(
                        //   height: MediaQuery.of(context).size.height / 2.5,
                        //   image: AssetImage(
                        //     'assets/graphics/transfer.png',
                        //   ),
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            RaisedButton(
                              child: Text("Create Account"),
                              onPressed: () {
                                Navigator.pushNamed(context, Register.id);
                              },
                            ),
                            FlatButton(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, Login.id);
                              },
                            ),
                            SizedBox(height: 120),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
