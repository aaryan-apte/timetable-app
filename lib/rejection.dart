import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:http/http.dart' as http;



class Rejection extends StatelessWidget {
  //const Rejection({super.key});
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  Future EmailSend() async{
    

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId ='service_xr10to8';
    const templateId ='template_zl5s8di';
    const userId ='z4hV8Try9tz6UkJss';
    final response = await http.post(
      url,
      headers:{
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'club_email': emailController.text, 
          'user_subject': subjectController.text,
          'user_message': messageController.text,
        },
      }),
      );
    return response.statusCode;

  }

  Widget message() {
    return Container(
      child: Text("Email sent successfully!")
    );
  }

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
        appBar: AppBar(title: const Text('Rejected Proposal Mail'),),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                     hintText: "Please Enter To Mail Address",
                    labelText: "To Mail",
                  ),
                ),
                TextFormField(
                  controller: subjectController,
                  decoration: const InputDecoration(
                    hintText: "Please Enter Subject",
                    labelText: "Proposal Rejection",
                  ),
                ),
                TextFormField(
                  controller: messageController,
                  decoration: const InputDecoration(
                    labelText: "Your proposal has been rejected due to the" + "\n" + "following reasons: "+ "\n" + "\n",
                    hintText:  "\n" + "\n"+"Please Enter Text",
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
                      //sendEmail(subject.text, body.text, email.text);
                      EmailSend();
                     }, 
                     child: const Text("Send Email")

                     )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}