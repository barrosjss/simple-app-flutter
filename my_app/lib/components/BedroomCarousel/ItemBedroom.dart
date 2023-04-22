// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, unnecessary_this

import 'package:my_app/models/Bedroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemBedroom extends StatefulWidget {
  Bedroom bedroom;

  ItemBedroom(this.bedroom);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<ItemBedroom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Container(
          decoration: _boxDecoration(context),
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _infoBanner(context),
              ],
            ),
          ),
        ));
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
      color: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(16.0),
    );
  }

  Widget _infoBanner(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 48.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: IconButton(
            iconSize: 0.0,
            icon: SvgPicture.asset('assets/icons/image.svg'),
            onPressed: () {},
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                this.widget.bedroom.title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                this.widget.bedroom.name,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ]),
          ),
          Text(
            this.widget.bedroom.onOff,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ])
      ],
    );
  }
}
