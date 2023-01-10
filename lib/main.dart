import 'package:flutter/material.dart';

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
  late int pageViewIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          TextButton(
            onPressed: (() {}),
            child: const Text(
              '블로그',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: (() {}),
            child: const Text(
              '좋아요',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        title: const Text('동실아저씨 블로그'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text('Page1')),
          ),
          Container(
            color: Colors.amber,
            child: Center(child: Text('Page2')),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('Page3')),
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
