import 'package:flutter/material.dart';
import 'package:adv_basics/home.dart';
import 'package:adv_basics/base_layout.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext ctx) {
    return const MaterialApp(
      home: BaseLayout(child: Home()),
    );
  }
}
