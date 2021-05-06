import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Page"),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 34),
        ),
      ),
    );
  }
}
