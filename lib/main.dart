import 'package:flutter/material.dart';
import 'package:first_flutter_app/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Visitor Management System",
      home: new LoginPage());
  }

}



