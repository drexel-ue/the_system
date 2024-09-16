import 'package:flutter/material.dart';
import 'package:system/app/colors.dart';
import 'package:system/app/layout.dart';

/// A scaffold that uses the system theme.
@immutable
class SystemScaffold extends StatelessWidget {
  /// Creates a const [SystemScaffold].
  const SystemScaffold({
    super.key,
    required this.body,
  });

  /// The body of the scaffold.
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: allPadding16,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: SystemColors.secondary),
            ),
            child: Padding(
              padding: allPadding16,
              child: Center(
                child: body,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
