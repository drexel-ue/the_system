import 'package:flutter/material.dart';
import 'package:system/app/layout.dart';
import 'package:system/features/sign_in/sign_in_page.dart';
import 'package:system/features/sign_up/sign_up_page.dart';
import 'package:system/util/create_route.dart';
import 'package:system/widgets/system_button.dart';
import 'package:system/widgets/system_scaffold.dart';

/// The landing page.
@immutable
class LandingPage extends StatelessWidget {
  /// Creates a const [LandingPage].
  const LandingPage({super.key});

  /// The path of the landing page.
  static const path = '/';

  /// Pushes the landing page.
  static Future<T?> push<T extends Object?>(BuildContext context) async {
    return Navigator.of(context).push(createRoute(path, (_) => const LandingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return SystemScaffold(
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SystemButton(
            onPressed: () {
              SignUpPage.push(context);
            },
            child: const Text('sign up'),
          ),
          horizontalMargin8,
          SystemButton(
            onPressed: () {
              SignInPage.push(context);
            },
            child: const Text('sign in'),
          ),
        ],
      ),
    );
  }
}
