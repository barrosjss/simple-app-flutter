// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, must_be_immutable, unused_field, prefer_final_fields, override_on_non_overriding_member, unused_element, dead_code, sort_child_properties_last, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/date.dart';
import '../components/DateItem.dart';

class BarberShop extends StatefulWidget {
  BarberShop({Key? key}) : super(key: key);

  @override
  State<BarberShop> createState() => _BarberShopState();
}

class _BarberShopState extends State<BarberShop> {
  final dateList = Date.dateList();
  List<Date> _foundDate = [];
  final _dateController = TextEditingController();

  @override
  void initState() {
    _foundDate = dateList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  _customAppBar(),
                  _textHeader(context),
                  Expanded(
                    child: ListView(
                      children: [
                        for (Date datee in _foundDate.reversed)
                          DateItem(
                            date: datee,
                            onDateChanged: _handleDateChange,
                            onDeleteItem: _deleteDateItem,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _dateController,
                      decoration: InputDecoration(
                          hintText: 'Name - [date]', border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    onPressed: () {
                      _addDateItem(_dateController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                  ),
                ),
              ]),
            ),
          ],
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

  void _handleDateChange(Date date) {
    setState(() {
      date.isDone = !date.isDone;
    });
  }

  void _deleteDateItem(String id) {
    setState(() {
      dateList.removeWhere((item) => item.id == id);
    });
  }

  void _addDateItem(String date) {
    setState(() {
      dateList.add(Date(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: date,
      ));
    });
    _dateController.clear();
  }
}

Widget _textHeader(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Barber Shop',
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          'Agendamiento de citas.',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    ),
  );
}
