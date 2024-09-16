import 'package:flutter/widgets.dart';
import 'package:system/features/landing/landing_page.dart';
import 'package:system/features/sign_in/sign_in_page.dart';
import 'package:system/features/sign_up/sign_up_page.dart';
import 'package:system/util/extensions/int.dart';

/// The routes of the system.
final _routes = {
  LandingPage.path: (BuildContext context) => const LandingPage(),
  SignUpPage.path: (BuildContext context) => const SignUpPage(),
  SignInPage.path: (BuildContext context) => const SignInPage(),
};

/// Generates the routes of the system.
PageRouteBuilder onGenerateRoute(RouteSettings settings) {
  return PageRouteBuilder(
    settings: settings,
    opaque: false,
    transitionDuration: 150.ms,
    reverseTransitionDuration: 150.ms,
    pageBuilder: (context, animation, secondaryAnimation) => _routes[settings.name]!(context),
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
