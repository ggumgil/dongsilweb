import 'package:dongsilweb/widgets/text.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  // TODO Add additional footer components (i.e. about, links, logos).
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: const Align(
        alignment: Alignment.centerRight,
        child: TextBody(text: "Dongsil Copyright © 2023"),
      ),
    );
  }
}
