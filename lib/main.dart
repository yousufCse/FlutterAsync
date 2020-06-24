

import 'package:flutter/material.dart';
import 'package:flutterasync/src/notifier/Counter.dart';
import 'package:provider/provider.dart';
import 'src/app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: App(),
    )
  );
}