import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';



class Acceptance extends StatelessWidget {
  //const Rejection({super.key});
  final _key = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController body = TextEditingController();


  sendEmail(String subject, String body,String recipientemail) async{
    final Email email = Email(
      body: body,
      subject: subject,
      recipients: [recipientemail],
      isHTML: false,
    );
    await FlutterEmailSender.send(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Accepted Proposal Mail'),),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  controller: email,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                     hintText: "Please Enter To Mail Address",
                    labelText: "To Mail",
                  ),
                ),
                TextFormField(
                  controller: subject,
                  decoration: const InputDecoration(
                    hintText: "Please Enter Subject",
                    labelText: "Proposal Acceptance",
                  ),
                ),
                TextFormField(
                  controller: body,
                  decoration: const InputDecoration(
                    hintText: "Please Enter Text",
                    labelText: "Your Proposal have been accepted. Do check the events timetable.",
                  ),
                  minLines: 5,
                  maxLines: 8,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     ElevatedButton(onPressed:(){
                      _key.currentState!.save();
                      print('${email.text}');
                      sendEmail(subject.text, body.text, email.text);
                     }, 
                     child: const Text("Send Email")
                     )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}