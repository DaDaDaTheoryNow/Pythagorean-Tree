import 'package:flutter/material.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/view/screen/pythagorean_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: AppTheme.lightAppTheme,
      debugShowCheckedModeBanner: false,
      home: PythagoreanScreen(),
    );
  }
}
