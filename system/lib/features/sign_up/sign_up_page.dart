import 'package:flutter/material.dart';
import 'package:system/app/layout.dart';
import 'package:system/util/create_route.dart';
import 'package:system/widgets/system_button.dart';
import 'package:system/widgets/system_scaffold.dart';

/// The sign up page.
@immutable
class SignUpPage extends StatelessWidget {
  /// Creates a const [SignUpPage].
  const SignUpPage({super.key});

  /// The path of the sign up page.
  static const path = '/sign-up';

  /// Pushes the sign up page.
  static Future<T?> push<T extends Object?>(BuildContext context) async {
    return Navigator.of(context).push(
      createRoute(
        path,
        (BuildContext context) => const SignUpPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SystemScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('sign up', textAlign: TextAlign.center),
          verticalMargin12,
          Center(
            child: SystemButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('back'),
            ),
          ),
        ],
      ),
    );
  }
}
