import 'dart:async';
import 'package:flutter/material.dart';
import 'termsPage.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // inputs from user
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controllerEmail.dispose();
    controllerPassword.dispose();
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
            height: pageHeight,
            width: pageWidth,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: pageHeight / 10,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: pageWidth / 1.2,
                  height: pageHeight / 4,
                  fit: BoxFit.fill,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  colorBlendMode: BlendMode.dstATop,
                ),
                SizedBox(
                  height: pageHeight / 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: pageHeight / 3.5),
                  child: FlatButton(
                    child: Text(
                      'Primeiro acesso? Clique aqui!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: pageHeight / 70,
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TermsPage(),
                        ),
                      ),
                    },
                  ),
                ),
                Container(
                  width: pageWidth / 1.2,
                  height: pageHeight / 18,
                  margin: EdgeInsets.only(top: 0),
                  padding: EdgeInsets.only(
                    left: pageWidth / 30,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ]),
                  child: TextField(
                    controller: controllerEmail,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail',
                    ),
                  ),
                ),
                Container(
                  width: pageWidth / 1.2,
                  height: pageHeight / 18,
                  margin: EdgeInsets.only(top: pageHeight / 40),
                  padding: EdgeInsets.only(
                    top: pageHeight / 40,
                    left: pageWidth / 30,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5)
                      ]),
                  child: TextField(
                    controller: controllerPassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Senha',
                    ),
                  ),
                ),
                Container(
                  height: pageHeight / 20,
                  width: pageWidth / 1.5,
                  margin: EdgeInsets.only(top: pageHeight / 40),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 128, 128, 1),
                            Color.fromRGBO(0, 128, 128, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: ButtonTheme(
                      minWidth: pageWidth / 2,
                      height: pageHeight / 2,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: pageHeight / 40,
                          ),
                        ),
                        color: Colors.white,
                        onPressed: null,
                      ),
                    ),
                  ),
                ),
                /*Container(
                  margin: EdgeInsets.only(top: pageHeight / 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: pageHeight / 20,
                        width: pageWidth / 2.5,
                        margin: EdgeInsets.only(top: pageHeight / 100),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue[100],
                                  Colors.blue,
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: ButtonTheme(
                            minWidth: pageWidth / 2,
                            height: pageHeight / 2,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'Entrar com Facebook',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: pageHeight / 50,
                                ),
                              ),
                              color: Colors.white,
                              onPressed: null,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: pageHeight / 20,
                        width: pageWidth / 2.5,
                        margin: EdgeInsets.only(
                            top: pageHeight / 80, left: pageHeight / 80),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red[100],
                                  Colors.red,
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: ButtonTheme(
                            minWidth: pageWidth / 2,
                            height: pageHeight / 2,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'Entrar com Google',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: pageHeight / 50,
                                ),
                              ),
                              color: Colors.white,
                              onPressed: null,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),*/
                Container(
                  width: pageWidth / 1.2,
                  height: pageHeight / 30,
                  margin: EdgeInsets.only(top: pageHeight / 8),
                  padding: EdgeInsets.only(
                    left: pageWidth / 50,
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/icon.png',
                        width: pageWidth / 18,
                        height: pageHeight / 20,
                        fit: BoxFit.fill,
                        color: Color.fromRGBO(144, 0, 32, 1),
                      ),
                      SizedBox(
                        width: pageWidth / 50,
                      ),
                      Text(
                        '@semfalta.app',
                        style: TextStyle(
                            color: Color.fromRGBO(144, 0, 32, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: pageWidth / 1.2,
                  height: pageHeight / 30,
                  margin: EdgeInsets.only(top: pageHeight / 100),
                  padding: EdgeInsets.only(
                    left: pageWidth / 50,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Color.fromRGBO(144, 0, 32, 1),
                      ),
                      SizedBox(
                        width: pageWidth / 50,
                      ),
                      Text(
                        'atendimento.semfalta@gmail.com',
                        style: TextStyle(
                            color: Color.fromRGBO(144, 0, 32, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //color: Colors.black,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Color.fromRGBO(0, 128, 128, 1),
                ],
              ),
              //borderRadius: BorderRadius.only(
              //bottomLeft: Radius.circular(90),
              //),
            ),
          ),
        )
      ],
    );
  }
}
