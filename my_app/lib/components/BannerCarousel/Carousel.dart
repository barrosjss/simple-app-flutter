// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'ItemBanner.dart';
import '../../models/Weather.dart';

class Carousel extends StatelessWidget {
  List<Weather> weathers;

  Carousel(this.weathers);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.90,
        height: 200.0,
      ),
      items: this.weathers.map((e) => ItemBanner(e)).toList(),
    );
  }
}
