import 'package:flutter/material.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/view/widgets/pythagorean_tree.dart';

class PythagoreanScreen extends StatelessWidget {
  const PythagoreanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Дерево Пифогора"),
      ),
      body: Center(
          child: PythagoreanTree(
        leftAngle: 30,
        rightAngle: 35,
        length: 65,
        depth: 9,
        strokeWidth: 5,
        treeColor: Colors.brown,
        leavesColor: Colors.pink,
      )),
    );
  }
}
