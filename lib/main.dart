import 'package:flutter/material.dart';
import 'package:somphotapp/screen/login.dart';
import 'package:somphotapp/widget/navbar.dart';


void main() async {
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
