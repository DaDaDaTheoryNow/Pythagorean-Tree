import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/data/models/pythagorean_tree.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/controller/state.dart';

class PythagoreanTreeController extends GetxController {
  final state = PythagoreanTreeState();

  // Функция для генерации рандомных значений дерева
  void generateNewTree(double screenWidth) async {
    final rng = Random();

    // Если ширина экрана меньше положений 
    if (screenWidth <= 11) {
      screenWidth = rng.nextInt(45) + 130;
    }

    // Конечная длина дерева
    final maxLength = screenWidth / 11;

    // Рандомный цвет для листьев
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

    // Генерация случайных значений для дерева
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
    // Генерировать дерево с шириной экрана
    generateNewTree(screenWidth);
    super.onInit();
  }
}
