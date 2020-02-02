import 'dart:collection';

import 'package:flutter/material.dart';

import 'Helpers/Todo.dart';

class DashBoardPage extends StatefulWidget {
 // final Todo todo;
  final HashMap hashMap;

  DashBoardPage({Key key ,@required this.hashMap}) : super(key:key);

  @override
  State<StatefulWidget> createState() {
    return _DashBoardPage(hashMap: this.hashMap);
  }

}

class _DashBoardPage extends State<DashBoardPage> {

  //final Todo todo;
  final HashMap hashMap;
  _DashBoardPage({Key key ,@required this.hashMap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Welcome " + hashMap['name'] +"\n" +hashMap['pwd'],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}
