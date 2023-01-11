import 'package:dongsilweb/widgets/web_card.dart';
import 'package:flutter/material.dart';

import '../widgets/blog.dart';

class WhatIWantPage extends StatelessWidget {
  const WhatIWantPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MenuBar(),
          WebCard(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.amber,
              text: '이렇게 원하는 것이 있는 나'),
          WebCard(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.cyan,
              text: '이렇게 원하는 것이 있는 나'),
          WebCard(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
              text: '이렇게 원하는 것이 있는 나'),
          WebCard(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blue,
              text: '이렇게 원하는 것이 있는 나'),
          divider,
          const Footer(),
        ],
      ),
    );
  }
}
