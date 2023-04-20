import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff183561),
        child: Column(children: <Widget>[
          Image.asset('assets/img/img_main.png'),
          Text('SimpleApp'),
          Text('Jesus Barros')
        ]),
      ),
    );
  }
}
