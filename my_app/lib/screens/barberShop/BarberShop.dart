// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, must_be_immutable, unused_field, prefer_final_fields, override_on_non_overriding_member, unused_element, dead_code, sort_child_properties_last, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_new

import 'package:flutter/material.dart';
import 'package:my_app/screens/ScheduleScreen.dart';

class BarberShop extends StatefulWidget {
  BarberShop({Key? key}) : super(key: key);

  @override
  State<BarberShop> createState() => _BarberShopState();
}

class _BarberShopState extends State<BarberShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D5A58),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _textHeader(context),
                  _services(context),
                  _barbers(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _textHeader(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'BARBER SHOP',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'BOOKING APP',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    ),
  );
}

Widget _services(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Text(
            'Services',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  _showModal(context);
                },
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0XFFFFC38F),
                      ),
                      child: Image.asset(
                        'assets/imgs/tijeras.png',
                      ),
                    ),
                    Text('Hair cut'),
                  ],
                )),
            GestureDetector(
                onTap: () {
                  _showModal(context);
                },
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0XFFFFC38F),
                      ),
                      child: Image.asset(
                        'assets/imgs/navaja-de-afeitar.png',
                      ),
                    ),
                    Text('Shaving'),
                  ],
                )),
            GestureDetector(
                onTap: () {
                  _showModal(context);
                },
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0XFFFFC38F),
                      ),
                      child: Image.asset(
                        'assets/imgs/peine.png',
                      ),
                    ),
                    Text('Hair style'),
                  ],
                )),
          ],
        ),
      ],
    ),
  );
}

Widget _barbers(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Text(
            'Barbers',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0XFFFFC38F),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                      image: AssetImage('assets/imgs/bad.jpg'),
                    ),
                  ),
                ),
                Text('Bad Bunny'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0XFFFFC38F),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                      image: AssetImage('assets/imgs/michael.jpg'),
                    ),
                  ),
                ),
                Text('Michel'),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0XFFFFC38F),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                      image: AssetImage('assets/imgs/antonio.jpg'),
                    ),
                  ),
                ),
                Text('Antonio'),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

void _showModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 350,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Summary',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hair cut',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '12.000',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'IVA',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '19%',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cupon',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '0%',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total price',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      '12.000',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScheduleScreen()));
                },
                child: Center(
                  child: Container(
                    width: 130,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0XFFFFC38F),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
