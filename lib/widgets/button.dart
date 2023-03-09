import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/constant/colors.dart';

class TagButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const TagButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        title,
      ),
    );
  }
}

class ReadMoreButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ReadMoreButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(textPrimary),
        side: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.focused) || states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
            return const BorderSide(color: textPrimary, width: 2);
          }

          return const BorderSide(color: textPrimary, width: 2);
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.focused) || states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
            return Colors.white;
          }

          return textPrimary;
        }),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
          if (states.contains(MaterialState.focused) || states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
            return GoogleFonts.montserrat(
              textStyle: const TextStyle(fontSize: 14, color: Colors.white, letterSpacing: 1),
            );
          }

          return GoogleFonts.montserrat(
            textStyle: const TextStyle(fontSize: 14, color: textPrimary, letterSpacing: 1),
          );
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 12, vertical: 16)),
      ),
      child: const Text(
        "READ MORE",
      ),
    );
  }
}
