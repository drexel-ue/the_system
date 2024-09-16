import 'package:flutter/material.dart';
import 'package:system/app/layout.dart';
import 'package:system/widgets/system_button.dart';
import 'package:system/widgets/system_scaffold.dart';

/// The sign in page.
@immutable
class SignInPage extends StatelessWidget {
  /// Creates a const [SignInPage].
  const SignInPage({super.key});

  /// The path of the sign in page.
  static const path = '/sign-in';

  /// Pushes the sign in page.
  static Future<T?> push<T extends Object?>(BuildContext context) async {
    return await Navigator.of(context).pushNamed(path);
  }

  @override
  Widget build(BuildContext context) {
    return SystemScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('sign in', textAlign: TextAlign.center),
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
