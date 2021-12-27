import 'package:flutter/material.dart';

class Rotation extends PageRouteBuilder {
  final Widget page;
  final Widget? lotie;

  Rotation({RouteSettings? settings, required this.page, this.lotie})
      : super(
            settings: settings,
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                page,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget lotie) =>
                ScaleTransition(
                  scale: Tween<double>(begin: 0.0, end: 10.0).animate(
                    CurvedAnimation(
                      parent: animation,
                      curve: Curves.slowMiddle,
                    ),
                  ),
                  child: lotie,
                ));
}
