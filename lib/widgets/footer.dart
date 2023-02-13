import 'package:dongsilweb/widgets/text.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  // TODO Add additional footer components (i.e. about, links, logos).
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: const [
            TextBody(text: "Dongsil Copyright © 2023"),
            TextBodySecondary(text: "Sejong City, Republic of Korea"),
          ],
        ),
      ),
    );
  }
}
