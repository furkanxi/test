import 'package:flutter/material.dart';

import './screens/homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prototyp',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(32, 27, 27, 1),
        accentColor: Color.fromRGBO(59, 40, 71, 1),
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}
