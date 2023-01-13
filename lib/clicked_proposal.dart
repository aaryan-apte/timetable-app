import 'package:flutter/material.dart';
import 'acceptance.dart';
import 'rejection.dart';


class Clicked_Proposal extends StatelessWidget {
  const Clicked_Proposal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text('Proposal'),),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
              child: 
              Column(
              children: [
                TextFormField(
        
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                     hintText: "Club Name",
                    labelText: " ",
                  ),
                ),
                TextFormField(
                  
                  decoration: const InputDecoration(
                    hintText: "Club Event",
                    labelText: " ",
                  ),
                ),
                TextFormField(
                  
                  decoration: const InputDecoration(
                    hintText: "Proposal",
                    labelText: " ",
                  ),
                  minLines: 5,
                  maxLines: 8,
                ),

              ],
            ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: (() {
                         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  Acceptance()));
                      }),
                      child: Text(
                        "ACCEPT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  ElevatedButton(
                      onPressed: (() {
                        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  Rejection()));
                      }),
                      child: Text(
                        "REJECT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
