import 'package:animations/animations.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static const String home = "/";
  static const String post = "/post";
  static const String style = "/style";
  static const String contact = "/contact";
  static const String whatiwant = "/whatiwant";
  static const String projects = "/projects";
  static const String dashboard = "/dashboard";

  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page, {int duration = 300}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(animation: animation, child: child);
      },
    );
  }
}
