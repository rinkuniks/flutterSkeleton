import 'dart:ui';
import 'package:flutter/material.dart';

void foo() {
  runApp(MyCourse());
}

class MyCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  title: 'Login',
      //  theme: ThemeData(primarySwatch: Colors.cyan),
      home: loginView(),
    );
  }
}

class loginView extends StatelessWidget {
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   appBar: AppBar(title: Text('login')),
        body:Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              child:Text("My Course")));
    
  }
}
