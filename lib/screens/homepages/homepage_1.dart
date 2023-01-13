// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:slot_allot/imported_files/loginFaculty.dart';
import 'package:slot_allot/imported_files/registerFaculty.dart';
import 'package:slot_allot/screens/signup_login/login_gs.dart';
import 'package:slot_allot/screens/signup_login/signup_faculty.dart';

import '../../imported_files/registerGS.dart';
import '../../imported_files/widget/loginGS.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String organisation;
  late String eventName;
  late String venue;
  late String time;
  int randomInteger = Random().nextInt(6);
  late int randomColor = Random().nextInt(6);

  final List<MaterialColor> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.grey,
    Colors.cyan
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            '             Slot Allot',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 70.0,
                  width: 100.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey[900],
                    ),
                    child: Text(
                      'Map',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>  )
                      // )
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ContainerSchedule(colors: colors, randomColor: randomColor),
                ContainerSchedule(colors: colors, randomColor: randomColor)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ContainerSchedule extends StatelessWidget {
  const ContainerSchedule({
    Key? key,
    required this.colors,
    required this.randomColor,
  }) : super(key: key);

  final List<MaterialColor> colors;
  final int randomColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(5.0),
      color: colors[randomColor],
      child: Text(
        'COC-Inheritance',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
//

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Manasi Kulkarni',
              style: TextStyle(fontSize: 18.0),
            ),
            accountEmail: Text(
              'mukulkarni@ce.vjti.ac.in',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.book_rounded),
                  title: Text(
                    'Login as Faculty',
                    style:
                        TextStyle(fontSize: 18.0, color: Colors.blueGrey[900]),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginFaculty(),
                  ),
                );
              }),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginGS(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.mic),
                title: Text(
                  'Login as GS',
                  style: TextStyle(fontSize: 18.0, color: Colors.blueGrey[900]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.book_rounded),
                title: Text(
                  'Register as Faculty',
                  style: TextStyle(fontSize: 18.0, color: Colors.blueGrey[900]),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterFaculty(),
                ),
              );
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.book_rounded),
                title: Text(
                  'Register as GS',
                  style: TextStyle(fontSize: 18.0, color: Colors.blueGrey[900]),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterGS(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
