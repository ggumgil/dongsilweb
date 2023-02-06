// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SideMenuModel {
  int id;
  String title;
  Icon icon;
  SideMenuModel({
    required this.id,
    required this.title,
    required this.icon,
  });
}

List<SideMenuModel> sideMenus = [
  SideMenuModel(id: 1, title: 'Flutter', icon: const Icon(Icons.abc)),
  SideMenuModel(
      id: 2, title: 'Project', icon: const Icon(Icons.precision_manufacturing)),
  SideMenuModel(
      id: 3, title: '일기', icon: const Icon(Icons.display_settings_rounded)),
  SideMenuModel(id: 4, title: '경제', icon: const Icon(Icons.eco_outlined)),
  SideMenuModel(id: 5, title: '하고 싶은 일', icon: const Icon(Icons.tornado)),
];

extension IconExtenstion on Icon {
  static Icon fromMap(Map<String, dynamic> icon) {
    return Icon(icon['icon']);
  }
}
