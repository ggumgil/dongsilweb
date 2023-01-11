import 'package:dongsilweb/widgets/blog.dart';
import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MenuBar(),
          Container(color: Colors.amber),
        ],
      ),
    );
  }
}
