// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dongsilweb/data/model/music_link_item_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicLinkTile extends StatelessWidget {
  const MusicLinkTile({
    Key? key,
    required this.musicLinkItem,
  }) : super(key: key);

  final MusicLinkItem musicLinkItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(musicLinkItem.id.toString()),
      title: Text(musicLinkItem.title),
      trailing: const Icon(Icons.arrow_circle_right_outlined),
      onTap: () async {
        if (!await launchUrl(Uri.parse(musicLinkItem.url))) {
          throw Exception('Could not launch ${musicLinkItem.url}');
        }
      },
    );
  }
}
