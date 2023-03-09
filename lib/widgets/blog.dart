// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dongsilweb/widgets/button.dart';
import 'package:dongsilweb/widgets/image_wrapper.dart';
import 'package:flutter/material.dart';

import '../common/constant/spacings.dart';
import '../common/constant/style.dart';
import '../routes.dart';
import 'text.dart';

const Widget divider = Divider(color: Color(0xFFEEEEEE), thickness: 1);
Widget dividerSmall = Container(
  width: 40,
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color(0xFFA0A0A0),
        width: 1,
      ),
    ),
  ),
);

List<Widget> authorSection({String? imageUrl, String? name, String? bio}) {
  return [
    divider,
    Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: <Widget>[
          if (imageUrl != null)
            Container(
              margin: const EdgeInsets.only(right: 25),
              child: Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: Image.asset(
                  imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          Expanded(
            child: Column(
              children: <Widget>[
                if (name != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextHeadlineSecondary(text: name),
                  ),
                if (bio != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      bio,
                      style: bodyTextStyle,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    ),
    divider,
  ];
}

class ListItem extends StatelessWidget {
  // TODO replace with Post item model.
  final String title;
  final String? imageUrl;
  final String? description;

  const ListItem({Key? key, required this.title, this.imageUrl, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (imageUrl != null)
          ImageWrapper(
            image: imageUrl!,
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: marginBottom12,
            child: Text(
              title,
              style: headlineTextStyle,
            ),
          ),
        ),
        if (description != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: marginBottom12,
              child: Text(
                description!,
                style: bodyTextStyle,
              ),
            ),
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: marginBottom24,
            child: ReadMoreButton(
              onPressed: () => Navigator.pushNamed(context, Routes.post),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: slash_for_doc_comments
/**
 * Menu/Navigation Bar
 *
 * A top menu bar with a text or image logo and
 * navigation links. Navigation links collapse into
 * a hamburger menu on screens smaller than 400px.
 */
