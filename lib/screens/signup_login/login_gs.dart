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
        backgroundColor: Colors.white,
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
              Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 20.0,
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  constraints:
                  const BoxConstraints(maxWidth: 220.0),
                  hintText: "Password",
                  filled: true,
                  fillColor: Colors.blueGrey[100],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  filled: true,
                  constraints: BoxConstraints(maxWidth: 220.0),
                  fillColor: Colors.blueGrey[100],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
