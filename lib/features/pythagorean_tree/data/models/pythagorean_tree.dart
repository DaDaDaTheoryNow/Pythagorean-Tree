import 'package:flutter/material.dart';

class PythagoreanTreeModel {
  final double? leftAngle;
  final double? rightAngle;
  final double? length;
  final int? depth;
  final double? strokeWidth;
  final Color? treeColor;
  final Color? leavesColor;

  PythagoreanTreeModel({
    required this.leftAngle,
    required this.rightAngle,
    required this.length,
    required this.depth,
    required this.strokeWidth,
    required this.treeColor,
    required this.leavesColor,
  });
}
