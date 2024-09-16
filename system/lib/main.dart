import 'package:flutter/material.dart';
import 'package:system/app/routing.dart';
import 'package:system/app/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SystemApp());
}

/// The System App.
@immutable
class SystemApp extends StatelessWidget {
  /// Creates a const [SystemApp].
  const SystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'System',
      theme: getThemeData(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
