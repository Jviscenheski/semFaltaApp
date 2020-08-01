import 'dart:async';
import 'package:flutter/material.dart';

class TermsPage extends StatefulWidget {
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  final controllerName = TextEditingController();
  final controllerAge = TextEditingController();
  final controllerCity = TextEditingController();
  final controllerSenha = TextEditingController();
  final controllerEmail = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: insertElements(context),
    );
  }

  Widget insertElements(context) {
    var pageWidth = MediaQuery.of(context).size.width;
    var pageHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Positioned(
          top: pageWidth / 50,
          child: Container(
            width: pageWidth,
            height: pageHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Color.fromRGBO(0, 128, 128, 1),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: pageWidth / 4,
          left: pageWidth / 2.8,
          child: Text(
            'CADASTRO',
            style: TextStyle(
              color: Color.fromRGBO(144, 0, 32, 1),
              fontWeight: FontWeight.bold,
              fontSize: pageHeight / 30,
            ),
          ),
        ),
        Positioned(
          top: pageWidth / 3,
          left: pageWidth / 6,
          child: Container(
            height: pageHeight / 150,
            width: pageWidth / 1.5,
            color: Colors.white,
          ),
        ),
        registerInputs(pageHeight, pageWidth),
      ],
    );
  }

  Widget registerInputs(pageHeight, pageWidth) {
    return Center(
      //top: pageWidth / 50,
      child: Container(
        width: pageWidth / 1.2,
        height: pageHeight / 1.2,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 128, 128, 0.2),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: pageWidth / 1.5,
              height: pageHeight / 20,
              margin: EdgeInsets.only(
                top: pageHeight / 6,
                left: pageWidth / 50,
              ),
              padding: EdgeInsets.only(
                left: pageWidth / 50,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white.withOpacity(0.7),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
              child: TextField(
                controller: controllerName,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Name',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
