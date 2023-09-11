import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/data/models/pythagorean_tree.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/controller/state.dart';

class PythagoreanTreeController extends GetxController {
  final state = PythagoreanTreeState();

  void generateNewTree(double screenWidth) async {
    final rng = Random();

    if (screenWidth <= 11) {
      screenWidth = rng.nextInt(45) + 130;
    }

    final maxLength = screenWidth / 11;

    final int leavesRandomColor = rng.nextInt(3) + 1;
    final Color? leavesColor;
    switch (leavesRandomColor) {
      case 1:
        leavesColor = Colors.pink;
        break;
      case 2:
        leavesColor = Colors.green;
        break;
      case 3:
        leavesColor = Colors.orange;
        break;
      default:
        leavesColor = Colors.pink;
    }

    state.pythagoreanTreeModel = PythagoreanTreeModel(
      leftAngle: rng.nextInt(35) + 15,
      rightAngle: rng.nextInt(35) + 15,
      length: rng.nextInt(maxLength.toInt()) + 20,
      depth: rng.nextInt(7) + 5,
      strokeWidth: rng.nextInt(4) + 1,
      treeColor: Colors.brown,
      leavesColor: leavesColor,
    );
  }

  @override
  void onInit() {
    var screenWidth = Get.width;
    generateNewTree(screenWidth);
    super.onInit();
  }
}
