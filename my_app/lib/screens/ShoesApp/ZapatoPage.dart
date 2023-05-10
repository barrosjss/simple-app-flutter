// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_literals_to_create_immutables, unused_element
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/ShoesApp/colors.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdGray,
      appBar: AppBar(
        backgroundColor: tdGray,
        elevation: 0,
        title: _customAppBar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          _search(),
          _brands(),
        ]),
      ),
    );
  }

  Widget _customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          iconSize: 40.0,
          icon: SvgPicture.asset('assets/icons/shoesapp/hamburger.svg'),
          onPressed: () {},
        ),
        Text(
          'Explore',
          style: TextStyle(
              fontSize: 21, color: tdBlack, fontWeight: FontWeight.bold),
        ),
        IconButton(
          iconSize: 40.0,
          icon: SvgPicture.asset('assets/icons/shoesapp/cart.svg'),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _search() {
    return Container(
      margin: EdgeInsets.only(top: 10),
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

  Widget _brands() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/imgs/shoesapp/nike.png',
            width: 57,
            height: 30,
          ),
          Image.asset(
            'assets/imgs/shoesapp/adidas.png',
            width: 57,
            height: 30,
          ),
          Image.asset(
            'assets/imgs/shoesapp/puma.png',
            width: 57,
            height: 30,
          ),
          Image.asset(
            'assets/imgs/shoesapp/asics.png',
            width: 57,
            height: 30,
          ),
        ],
      ),
    );
  }
}
