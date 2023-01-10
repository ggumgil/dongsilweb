import 'dart:ui';

import 'package:dongsilweb/constant/style.dart';
import 'package:dongsilweb/second.dart';
import 'package:flutter/material.dart';

import 'constant/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '동실아저씨의 Blog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        actions: [
          TextButton(
            onPressed: (() {}),
            child: const Text('블로그', style: subTitle),
          ),
          TextButton(
            onPressed: (() {}),
            child: const Text('좋아요', style: subTitle),
          ),
        ],
        title: Text(texts['title']!, style: title),
      ),
      body: Row(
        children: [
          Container(
            width: 300,
            color: Colors.blue,
            child: Center(
              child: TextButton(
                child: const Text(
                  '눌러주세요',
                  style: title,
                ),
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const MySecondPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return child;
                    },
                  ));
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: ((context, index) {
                  return Text('안녕하세요. 동실아저씨. ${index.toString()}번째 인사');
                }),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
