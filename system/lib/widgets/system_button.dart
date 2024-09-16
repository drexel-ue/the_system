import 'package:flutter/material.dart';
import 'package:system/app/colors.dart';

/// A button that uses the system theme.
@immutable
class SystemButton extends StatelessWidget {
  /// Creates a const [SystemButton].
  const SystemButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  /// The callback that is called when the button is pressed.
  final VoidCallback onPressed;

  /// The child of the button.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            side: BorderSide(color: SystemColors.secondary),
          ),
        ),
        foregroundColor: WidgetStateProperty.all<Color>(SystemColors.secondary),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
