import 'package:dongsilweb/pages/page_post.dart';
import 'package:dongsilweb/pages/post_grid_page.dart';
import 'package:dongsilweb/pages/projects_page.dart';
import 'package:dongsilweb/pages/whatiwant_page.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'common/constant/text.dart';
import 'pages/dashboard_page.dart';
import 'pages/home_page.dart';
import 'routes.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('blog_articles');
  await Hive.openBox('settings');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff6750a4),
      ),
      builder: (context, child) => ResponsiveWrapper.builder(BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      title: menu['title']!,
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return const HomePage();
            case Routes.projects:
              return const ProjectsPage();
            case Routes.whatiwant:
              return const WhatIWantPage();
            case Routes.post:
              return const GridPostPage();
            case Routes.contact:
              return const PostPage();
            case Routes.dashboard:
              return const DashBoardPage();
            default:
              return const HomePage();
          }
        });
      },
    );
  }
}
