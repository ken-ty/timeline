import 'package:flutter/material.dart';
import 'package:timeline/menu.dart';
import 'package:timeline/my_home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Menu(),
    );
  }
}
