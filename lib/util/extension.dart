import 'package:flutter/material.dart';

extension IconExtenstion on Icon {
  static Icon fromMap(Map<String, dynamic> icon) {
    return Icon(icon['icon']);
  }
}
