import 'package:dongsilweb/routes.dart';
import 'package:dongsilweb/widgets/space.dart';
import 'package:dongsilweb/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/constant/colors.dart';
import '../common/constant/text.dart';

class MenuDiv extends StatelessWidget {
  const MenuDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: <Widget>[
              sizedBoxWidthSmall,
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName)),
                child: Text(menu['sub_title_1']!, style: GoogleFonts.montserrat(color: textPrimary, fontSize: 30, letterSpacing: 3, fontWeight: FontWeight.w500)),
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    children: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.home),
                        style: menuButtonStyle,
                        child: Text(
                          menu['sub_title_2']!,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.whatiwant),
                        style: menuButtonStyle,
                        child: Text(
                          menu['sub_title_3']!,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.projects),
                        style: menuButtonStyle,
                        child: Text(
                          menu['sub_title_4']!,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.post),
                        style: menuButtonStyle,
                        child: Text(
                          menu['sub_title_5']!,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.contact),
                        style: menuButtonStyle,
                        child: Text(
                          menu['sub_title_6']!,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, Routes.dashboard),
                        style: menuButtonStyle,
                        child: Text(
                          menu['sub_title_7']!,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(height: 1, margin: const EdgeInsets.only(bottom: 30), color: const Color(0xFFEEEEEE)),
      ],
    );
  }
}
