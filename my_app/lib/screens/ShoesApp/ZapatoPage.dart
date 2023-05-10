// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_literals_to_create_immutables, unused_element
import 'package:flutter/material.dart';
import '../../constants/ShoesApp/colors.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        elevation: 0,
        title: _customAppBar(),
      ),
      body: Text('Hair cut'),
    );
  }

  Widget _customAppBar() {
    return Row(
      children: [],
    );
  }
}
