// ignore_for_file: constant_identifier_names
import 'dart:math';

import 'package:flutter/material.dart';

const Color BASIC_COLOR = Colors.black;
const Color primaryColor = Color(0xff6750a4);

// Text
const Color textPrimary = Color(0xFF111111);
const Color textSecondary = Color(0xFF3A3A3A);

List<Color> colorList = [
  Colors.red,
  Colors.blue,
  Colors.amber,
  Colors.green,
  Colors.cyan,
  Colors.deepOrange,
  Colors.blueGrey,
  Colors.deepPurpleAccent,
  Colors.indigo,
  Colors.brown,
];

Color get randomColor =>
    colorList.elementAt(Random().nextInt(colorList.length - 1));
