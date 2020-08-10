import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_travel_booking/models/trip_model.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State {
  bool _travel = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () => print('Menu'),
                icon: Icon(Icons.menu),
                color: Colors.black,
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Text(
              'Забронировать тур',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          _getButtons(),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Куда',
                icon: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue[50],
                  ),
                  child: Icon(
                    Icons.location_on,
                    size: 25.0,
                    color: Colors.blue,
                  ),
                )),
          ),
          Divider(
            height: 40.0,
          ),
          TextField(
            enabled: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Период',
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue[50],
                ),
                child: Icon(
                  Icons.calendar_today,
                  size: 25.0,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Divider(
            height: 40.0,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Взрослых: 2, Детей: 2',
                icon: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue[50],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 25.0,
                      color: Colors.blue,
                    ))),
          ),
          Divider(
            height: 40.0,
          ),
          Center(
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 130.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Colors.blue,
              child: Text(
                'Поиск',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () => print('Поиск'),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Популярные направления',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          )
        ],
      ),
    );
  }

  _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(
                color: _travel == true ? Colors.transparent : Colors.grey[300]),
          ),
          color: _travel == true ? Colors.amber : null,
          child: Text(
            'Путешествие',
            style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          onPressed: () {
            setState(() {
              _travel = true;
            });
          },
        ),
        FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                  color: _travel == false
                      ? Colors.transparent
                      : Colors.grey[300])),
          color: _travel == false ? Colors.amber : null,
          child: Text(
            'Тур',
            style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          onPressed: () {
            setState(() {
              _travel = false;
            });
          },
        ),
      ],
    );
  }

  Future<Void> _selectDate(inContext) async {
    DateTime _selectedDate = await showDatePicker(
        context: inContext,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2022));
  }
}
