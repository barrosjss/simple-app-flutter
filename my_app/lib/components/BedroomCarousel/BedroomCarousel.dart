// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, unnecessary_this

import 'package:flutter/material.dart';
import './ItemBedroom.dart';
import '../../models/Bedroom.dart';

class BedroomCarousel extends StatelessWidget {
  List<Bedroom> bedrooms;

  BedroomCarousel(this.bedrooms);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: this.bedrooms.map((e) => ItemBedroom(e)).toList(),
      ),
    );
  }
}
