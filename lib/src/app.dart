
import 'package:flutter/material.dart';
import './screens/random_word.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: RandomWords(),
    );
  }
}