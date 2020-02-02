import 'dart:collection';

import 'package:first_flutter_app/Helpers/Todo.dart';
import 'package:flutter/material.dart';
import 'DashboardPage.dart';
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {

  TextEditingController tecEmail = new TextEditingController();
  TextEditingController tecPwd = new TextEditingController();

  bool passToggle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passToggle = true;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 50, backgroundImage: AssetImage('images/goku.jpeg')),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Welcome to VMS",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Login to continue",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: tecEmail,
                          decoration: InputDecoration(labelText: "Enter Email"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: tecPwd,
                          obscureText: passToggle,
                          decoration: InputDecoration(
                              labelText: "Enter Password",
                              suffixIcon: IconButton(
                                icon: Icon(!passToggle?Icons.visibility:Icons.visibility_off),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  togglePassWord();
                                },
                              )),
                        ),
                      ),
                    ],
                  )),
              MaterialButton(
                child: Text("Login"),
                onPressed: () => display(context),
                splashColor: Colors.grey,
                color: Colors.redAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(10),
              )
            ],
          ),
        ),
      ),
    );
  }

  //get data from editext
  void display(BuildContext context) {
    print(tecEmail.text.toString().trim());

    HashMap hashMap = new HashMap<String,String>();
    hashMap.putIfAbsent('pwd', () => tecPwd.text.toString());
    hashMap.putIfAbsent('name', () => tecEmail.text.toString());

    Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardPage(hashMap:hashMap)));

  }

  void togglePassWord() {

    setState(() {

     passToggle = !passToggle;

    });

  }
}
