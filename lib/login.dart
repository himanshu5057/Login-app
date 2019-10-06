import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Loginstate();
  }
}

class Loginstate extends State<Login> {
  final TextEditingController _usercontroller = new TextEditingController();
  final TextEditingController _passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.lime,
      ),
      backgroundColor: Colors.white70,
      body: new Container(
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget>[
              new Image.asset(
                'images/1 face.png',
                height: 90.0,
                width: 90.0,
                color: Colors.black,
              ),
              new Container(
                height: 200.0,
                width: 400.0,
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _usercontroller,
                      decoration: new InputDecoration(
                        hintText: "Username",
                        icon: new Icon(Icons.person),
                      ),
                    ),
                    new TextField(
                      controller: _passwordcontroller,
                      decoration: new InputDecoration(
                        hintText: "Password",
                        icon: new Icon(Icons.lock),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(15),
                      child: new Center(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(left: 50),
                              child: new FlatButton(
                                color: Colors.lime,
                                onPressed: printt,
                                child: new Text(
                                  "Sign in",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(left: 80),
                              child: new FlatButton(
                                color: Colors.lime,
                                onPressed: erase,
                                child: new Text(
                                  "Clear",
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.all(15),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Welcome $user",
                    style: new TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }

  void erase() {
    setState(() {
      _usercontroller.clear();
      _passwordcontroller.clear();
    });
  }

  String user = "";
  void printt() {
    setState(() {
      if (_usercontroller.text.isNotEmpty &&
          _passwordcontroller.text.isNotEmpty)
        user = _usercontroller.text;
      else
        user = "wrong input";
    });
  }
}
