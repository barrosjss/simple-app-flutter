// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _textHeader(context),
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/image.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

Widget _textHeader(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Good Evenning',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Lorem Ipsum is simply dummy textfull.',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    ),
  );
}
