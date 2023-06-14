import 'package:flutter/material.dart';

class Message_screen extends StatefulWidget {
  const Message_screen({Key? key}) : super(key: key);

  @override
  State<Message_screen> createState() => _Message_screenState();
}

class _Message_screenState extends State<Message_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Message_screen"),
    );
  }
}
