import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Utilities/routes.dart';

class Proposal extends StatelessWidget {
  const Proposal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ProposalBar().expand(),
            Container(
              height: 695,
              width: 384,
              color: Colors.pink,
              child: Column(
                children: [
                  Text(
                    "  ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ).py16(),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.pushNamed(context, MyRoutes.PageHolder);
                }),
                child: Text(
                  "SEND REQUEST",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ))
          ],
        ),
      ),
    ).safeArea();
  }
}

class WriteProposal extends StatelessWidget {
  const WriteProposal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        height: 500,
        width: 450,
        child: Column(
          children: [
            Text(
              " WRITE A",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ).centered().py16(),
          ],
        ),
      ),
    ).safeArea();
    
  }
}

class ProposalBar extends StatelessWidget {
  const ProposalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: 70,
        width: 450,
        child: Column(
          children: [
            Text(
              " WRITE A PROPOSAL",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ).centered().py16(),
          ],
        ),
        constraints: BoxConstraints(minHeight: 14, minWidth: 14),
      ),
    ).safeArea();
    
  }
}