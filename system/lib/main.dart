import 'package:flutter/material.dart';
import 'package:system/app/theme.dart';
import 'package:system/widgets/system_scaffold.dart';

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
      theme: getThemeData(),
      home: const SystemScaffold(
        body: Text('Hello World!'),
      ),
    );
  }
}
