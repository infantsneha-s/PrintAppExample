

import 'package:flutter/material.dart';
import 'package:PrintExample/print.dart';



void main() => runApp(const MyApp('Printing Demo'));

class MyApp extends StatelessWidget {
  const MyApp(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Print(),
      ),
    );
  }

  
}
