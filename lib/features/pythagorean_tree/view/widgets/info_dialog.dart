import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/controller/controller.dart';

class PythagoreanTreeInfoDialog extends StatelessWidget {
  final PythagoreanTreeController controller;
  PythagoreanTreeInfoDialog({required this.controller});

  @override
  Widget build(BuildContext context) {
    final String treeColor = "Коричневый";

    final String leavesColor;
    switch (controller.state.pythagoreanTreeModel.leavesColor) {
      case Colors.green:
        leavesColor = "Зелёный";
        break;
      case Colors.orange:
        leavesColor = "Оранжевый";
        break;
      case Colors.pink:
        leavesColor = "Розовый";
        break;
      default:
        leavesColor = "Неизвестно";
    }
    return AlertDialog(
      title: Text("Текущее Дерево Пифагора"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Левый угол: ${controller.state.pythagoreanTreeModel.leftAngle}°",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Правый угол: ${controller.state.pythagoreanTreeModel.rightAngle}°",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Начальная длина: ${controller.state.pythagoreanTreeModel.length} пикселей",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Число рекурсий: ${controller.state.pythagoreanTreeModel.depth}",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Ширина ствола: ${controller.state.pythagoreanTreeModel.strokeWidth} пикселей",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Цвет ствола: $treeColor",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Цвет листьев: $leavesColor",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text("Закрыть"),
        ),
      ],
    );
  }
}
