// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:my_app/screens/BarberShop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BarberShop(),
      theme: ThemeData(
        primaryColor: Colors.grey[700],
        accentColor: Colors.grey[900],
        highlightColor: Color(0XFFB7B7D2),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFFFFC38F),
          ),
          headline2: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3D5A58),
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3D5A58),
          ),
          headline4: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            fontSize: 16.0,
            color: Color(0xFF3D5A58),
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0XFFB7B7D2),
          ),
        ),
      ),
    );
  }
}
