import 'package:flutter/material.dart';
import 'package:system/util/extensions/int.dart';

/// Creates a [PageRouteBuilder] that animates the page when it is pushed.
Route<T> createRoute<T extends Object?>(String path, WidgetBuilder build) {
  return PageRouteBuilder(
    settings: RouteSettings(name: path),
    opaque: false,
    transitionDuration: 150.ms,
    reverseTransitionDuration: 150.ms,
    pageBuilder: (context, animation, secondaryAnimation) => build(context),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset(1.0, 1.0);
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);
      return Transform.scale(
        scaleX: 1.0,
        scaleY: 1.0 * offsetAnimation.value.dx,
        child: child,
      );
    },
  );
}
