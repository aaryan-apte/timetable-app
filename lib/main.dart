import 'package:flutter/material.dart';
import 'package:rejection_email/rejection.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 Widget build(BuildContext context) {
    return MaterialApp(
        home: Rejection()
    );
  }
}
