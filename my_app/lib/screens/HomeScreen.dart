// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/BannerCarousel/Carousel.dart';
import '../components/BedroomCarousel/BedroomCarousel.dart';
import '../models/Weather.dart';
import '../models/Bedroom.dart';

class HomeScreen extends StatelessWidget {
  List<Weather> forWeather = [
    Weather(degrees: '26', sky: 'Clear Sky', dayNight: false),
    Weather(degrees: '26', sky: 'Clear Sky', dayNight: false),
    Weather(degrees: '26', sky: 'Clear Sky', dayNight: false),
  ];

  List<Bedroom> forBedroom = [
    Bedroom(title: 'Bedroom', name: 'Philip Hue', onOff: 'On - Warm'),
    Bedroom(title: 'Bedroom', name: 'AC', onOff: 'On - 16c'),
    Bedroom(title: 'Bedroom', name: 'Alexa', onOff: 'Off - Block'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _textHeader(context),
            Carousel(forWeather),
            _bedroom(context, forBedroom),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: IconButton(
                    iconSize: 0.0,
                    icon: SvgPicture.asset('assets/icons/home.svg'),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: IconButton(
                    iconSize: 0.0,
                    icon: SvgPicture.asset('assets/icons/home.svg'),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: IconButton(
                    iconSize: 0.0,
                    icon: SvgPicture.asset('assets/icons/home.svg'),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
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
    padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
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

Widget _bedroom(context, forBedroom) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 8.0),
        child: Text(
          'Bedroom',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      BedroomCarousel(forBedroom),
    ],
  );
}
