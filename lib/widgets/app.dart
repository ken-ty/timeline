import 'package:flutter/material.dart';
import 'package:timeline/widgets/menu.dart';

/// アプリの root Widget を提供
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Menu(),
    );
  }
}
