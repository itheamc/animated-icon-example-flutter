import 'package:animated_icon_testing/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedIconTestingApp());
}

class AnimatedIconTestingApp extends StatelessWidget {
  const AnimatedIconTestingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Icon Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
