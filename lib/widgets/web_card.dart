import 'package:flutter/material.dart';

import '../common/constant/style.dart';

class WebCard extends StatelessWidget {
  const WebCard({super.key, required this.width, required this.height, required this.color, required this.text});

  final double width;
  final double height;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Center(child: Text(text, style: headlineTextStyle)),
      ),
    );
  }
}
