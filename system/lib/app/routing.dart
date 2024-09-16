import 'package:flutter/widgets.dart';
import 'package:system/features/landing/landing_page.dart';
import 'package:system/features/sign_in/sign_in_page.dart';
import 'package:system/features/sign_up/sign_up_page.dart';

/// The routes of the system.
final routes = {
  LandingPage.path: (BuildContext context) => const LandingPage(),
  SignUpPage.path: (BuildContext context) => const SignUpPage(),
  SignInPage.path: (BuildContext context) => const SignInPage(),
};
