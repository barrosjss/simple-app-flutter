// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this, deprecated_member_use

import 'package:my_app/models/Weather.dart';
import 'package:flutter/material.dart';

class ItemBanner extends StatefulWidget {
  Weather weather;

  ItemBanner(this.weather);

  @override
  _ItemJobState createState() => _ItemJobState();
}

class _ItemJobState extends State<ItemBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _favIcon(),
                ],
              ),
              _infoBanner(context),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16.0),
    );
  }

  Widget _favIcon() {
    return GestureDetector(
      child: Icon(
        this.widget.weather.dayNight ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      onTap: () {
        setState(() {
          this.widget.weather.dayNight = !this.widget.weather.dayNight;
        });
      },
    );
  }

  Widget _infoBanner(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          this.widget.weather.degrees,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          this.widget.weather.sky,
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: 3.0),
      ],
    );
  }
}
