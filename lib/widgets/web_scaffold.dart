import 'package:dongsilweb/pages/flutter_page.dart';
import 'package:dongsilweb/pages/notion_page.dart';
import 'package:dongsilweb/pages/projects_page.dart';
import 'package:dongsilweb/pages/whatiwant_page.dart';
import 'package:flutter/material.dart';

import '../constant/style.dart';
import '../constant/text.dart';

class WebScaffold extends StatelessWidget {
  const WebScaffold({required this.body, super.key});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.1,
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        title: Text(texts['title']!, style: title),
        actions: [
          TextButton(
            onPressed: (() {
              _buildPage(context, const WhatIWantPage());
            }),
            child: Text(texts['sub_title_1']!, style: subTitle),
          ),
          TextButton(
            onPressed: (() {
              _buildPage(context, const NotionPage());
            }),
            child: Text(texts['sub_title_2']!, style: subTitle),
          ),
          TextButton(
            onPressed: (() {
              _buildPage(context, const FlutterPage());
            }),
            child: Text(texts['sub_title_3']!, style: subTitle),
          ),
          TextButton(
            onPressed: (() {
              _buildPage(context, const ProjectsPage());
            }),
            child: Text(texts['sub_title_4']!, style: subTitle),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: body,
    );
  }

  void _buildPage(BuildContext context, Widget pageWidget) {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => pageWidget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              child,
        ));
  }
}
