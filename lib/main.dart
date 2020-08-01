import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() => runApp(SemFalta());

class SemFalta extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SemFaltaState();
  }
}

class _SemFaltaState extends State<SemFalta> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
