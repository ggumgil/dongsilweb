import 'dart:ui';

import 'package:dongsilweb/constant/text.dart';
import 'package:dongsilweb/data/model/music_link_item.dart';
import 'package:dongsilweb/widgets/blog.dart';
import 'package:dongsilweb/widgets/music_link_tile.dart';
import 'package:dongsilweb/widgets/main_container.dart';
import 'package:dongsilweb/widgets/space.dart';
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
                Container(
                  padding: const EdgeInsets.all(16),
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/images/walking_to_goal.png', fit: BoxFit.fitHeight),
                ),
                sizedBoxWidthLarge,
                Expanded(child: TextBody(text: contents['ggumgil']!)),
              ],
            ),
            divider,
            Container(
              padding: edgeInsetLeftSmall,
              alignment: Alignment.centerLeft,
              child: TextHeadlineSecondary(
                text: contents['musicLinkTitle']!,
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ...List.generate(
                  musicLinkItems.length,
                  (index) => MusicLinkTile(musicLinkItem: musicLinkItems[index]),
                )
              ],
            ),
            divider,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // SizedBox(
                //   width: MediaQuery.of(context).size.width * 0.5,
                //   height: 300,
                //   child: const Card(
                //     color: Colors.amber,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(30)),
                //     ),
                //     child: Center(child: Text('hi')),
                //   ),
                // ),
                Padding(
                  padding: edgeInsetLeftSmall,
                  child: TextBody(text: contents['introduction']!),
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
