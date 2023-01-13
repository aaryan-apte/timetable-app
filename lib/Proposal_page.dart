import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';

class ProposalPage extends StatelessWidget {
  const ProposalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Club Proposal'))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Please Enter To Club Name",
                labelText: "Club Name",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Please Enter Event Name",
                labelText: "Event Name",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Please Enter your proposal ",
                labelText: "Proposal",
              ),
              minLines: 5,
              maxLines: 8,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        color: Colors.red,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Discard Proposal',
                              style: TextStyle(color: Colors.white),
                            ))),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                        color: Colors.green,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Send Proposal',
                              style: TextStyle(color: Colors.white),
                            ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
