// hare krishna
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

TextStyle homePageTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
);

class GSLogin extends StatefulWidget {
  const GSLogin({super.key});

  @override
  State<GSLogin> createState() => _GSLoginState();
}

class _GSLoginState extends State<GSLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome!\n',
                textAlign: TextAlign.center,
                style: homePageTextStyle,
              ),
              SizedBox(
                height: 40.0,
              ),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
