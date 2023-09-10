import 'package:flutter/material.dart';

import 'pythagorean_tree_painer.dart';

// Для лучшего понимание можно взглянуть в класс PythagoreanTreePainter
// Там имеются все нужные комментарии

class PythagoreanTree extends StatelessWidget {
  final double leftAngle;
  final double rightAngle;
  final double length;
  final int depth;
  final double strokeWidth;
  final Color treeColor;
  final Color leavesColor;
  const PythagoreanTree(
      {super.key,
      required this.leftAngle,
      required this.rightAngle,
      required this.length,
      required this.depth,
      required this.strokeWidth,
      required this.treeColor,
      required this.leavesColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height / 2.2,
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(42)),
      child: CustomPaint(
        size: Size(MediaQuery.of(context).size.width / 1.6,
            MediaQuery.of(context).size.height / 4.3),
        painter: PythagoreanTreePainter(
            leftAngle: leftAngle,
            rightAngle: rightAngle,
            depth: depth,
            length: length,
            strokeWidth: strokeWidth,
            treeColor: treeColor,
            leavesColor: leavesColor),
      ),
    );
  }
}
