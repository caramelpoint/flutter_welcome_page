import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/pages/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CaramelTalks - Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: surfaceColor,
      ),
      home: Welcome(),
    );
  }
}
