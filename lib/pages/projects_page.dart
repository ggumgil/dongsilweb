import 'package:dongsilweb/widgets/blog.dart';
import 'package:flutter/material.dart';

import '../widgets/text.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MenuBar(),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                    'assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg',
                    fit: BoxFit.fitHeight),
              ),
              const Expanded(
                child: SizedBox(
                    height: 100,
                    child: TextBodySecondary(text: 'How are you doing?')),
              ),
            ],
          ),
          divider,
          const Footer(),
        ],
      ),
    );
  }
}
