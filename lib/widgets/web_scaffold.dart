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
        title: Text(texts['title']!, style: headlineTextStyle),
        actions: [
          TextButton(
            onPressed: (() async {
              await _buildPage(context, const WhatIWantPage());
            }),
            child:
                Text(texts['sub_title_1']!, style: headlineSecondaryTextStyle),
          ),
          TextButton(
            onPressed: (() async {
              await _buildPage(context, const NotionPage());
            }),
            child:
                Text(texts['sub_title_2']!, style: headlineSecondaryTextStyle),
          ),
          TextButton(
            onPressed: (() async {
              await _buildPage(context, const FlutterPage());
            }),
            child:
                Text(texts['sub_title_3']!, style: headlineSecondaryTextStyle),
          ),
          TextButton(
            onPressed: (() async {
              await _buildPage(context, const ProjectsPage());
            }),
            child:
                Text(texts['sub_title_4']!, style: headlineSecondaryTextStyle),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: body,
    );
  }

  Future<void> _buildPage(BuildContext context, Widget pageWidget) async {
    await Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => pageWidget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // var begin = const Offset(0.1, 1.0);
          // var end = Offset.zero;
          // var tween = Tween(begin: begin, end: end);
          // var offsetAnimation = animation.drive(tween);

          // return SlideTransition(
          //   position: offsetAnimation,
          //   child: child,
          // );
          return child;
        },
      ),
    );
  }
}
