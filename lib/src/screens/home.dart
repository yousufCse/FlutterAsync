import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Async")),
      body: Container(
        color: Colors.red,
        child: Text("Hello Flutter app"),
      ),
    );
  }
}
