// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_literals_to_create_immutables, unused_element
import 'package:flutter/material.dart';
import '../../constants/ShoesApp/colors.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdGray,
        elevation: 0,
        title: _customAppBar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          _search(),
        ]),
      ),
    );
  }

  Widget _customAppBar() {
    return Row(
      children: [],
    );
  }

  Widget _search() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: tdBGColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(210, 213, 234, 0.45),
            blurRadius: 50,
            offset:
                Offset(5, 5), // Cambia la posición de la sombra (eje x, eje y)
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
          border: InputBorder.none,
          hintText: 'Search...',
          hintStyle: TextStyle(color: tdGrayText),
        ),
      ),
    );
  }
}
