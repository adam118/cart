import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item {
  String title;
  double price;
  String Priceg;
  Image image;
  RaisedButton press;
  CheckboxListTile dep;
  CheckboxListTile dep1;
  CheckboxListTile dep2;
  CheckboxListTile dep3;
  double fatora = 0;
  CheckboxListTile dep4;
  double qun = 1;

  Item({
    this.price,
    this.qun,
    this.press,
    this.dep,
    this.fatora,
    this.dep1,
    this.dep2,
    this.dep3,
    this.dep4,
    this.Priceg,
    this.image,
    this.title,
  });
}
