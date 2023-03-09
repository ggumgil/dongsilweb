import 'package:flutter/material.dart';

enum ContentCategory {
  code(icon: Icon(Icons.abc), categoryName: '코딩'),
  project(icon: Icon(Icons.abc), categoryName: '프로젝트'),
  economy(icon: Icon(Icons.abc), categoryName: '경제'),
  diary(icon: Icon(Icons.abc), categoryName: '일기'),
  want(icon: Icon(Icons.abc), categoryName: '하고 싶은 일');

  const ContentCategory({required this.icon, required this.categoryName});

  final Icon icon;
  final String categoryName;
}
