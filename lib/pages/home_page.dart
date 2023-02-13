import 'dart:ui';

import 'package:dongsilweb/constant/text.dart';
import 'package:dongsilweb/widgets/blog.dart';
import 'package:dongsilweb/widgets/main_container.dart';
import 'package:dongsilweb/widgets/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      container: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                      'assets/images/coffee_paperclips_pencil_angled_bw_w1080.jpg',
                      fit: BoxFit.fitHeight),
                ),
                Expanded(child: TextBody(text: contents['introduction']!)),
              ],
            ),
            divider,
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 300,
                  child: const Card(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Center(child: Text('hi')),
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 300,
                    child: TextHeadline(text: '이렇게 오랜만에 써보는 글이네요.'),
                  ),
                ),
              ],
            ),
          ],
        ),
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
