import 'package:flutter/material.dart';
import 'package:rejection_email/clicked_proposal.dart';
import 'clicked_proposal.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Clicked_Proposal()
    );
  }
}
