import 'package:dongsilweb/constant/colors.dart';
import 'package:dongsilweb/widgets/main_container.dart';
import 'package:dongsilweb/widgets/web_card.dart';
import 'package:flutter/material.dart';


class WhatIWantPage extends StatelessWidget {
  const WhatIWantPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      container: SingleChildScrollView(
        child: Column(
          children: [
            WebCard(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: randomColor,
                text: '이렇게 원하는 것이 있는 나'),
            WebCard(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: randomColor,
                text: '이렇게 원하는 것이 있는 나'),
            WebCard(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: randomColor,
                text: '이렇게 원하는 것이 있는 나'),
            WebCard(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: randomColor,
                text: '이렇게 원하는 것이 있는 나'),
          ],
        ),
      ),
    );
  }
}
