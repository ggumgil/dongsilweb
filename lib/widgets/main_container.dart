import 'package:dongsilweb/widgets/footer.dart';
import 'package:dongsilweb/widgets/menu_bar.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key, required this.container});
  final Widget container;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MenuBar(),
          Expanded(
            child: container,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
