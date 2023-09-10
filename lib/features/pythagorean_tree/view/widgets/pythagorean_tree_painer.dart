import 'dart:math';
import 'package:flutter/material.dart';

class PythagoreanTreePainter extends CustomPainter {
  final double leftAngle; // Угол наклона левой ветки
  final double rightAngle; // Угол наклона правой ветки
  final double length; // Длина корня дерева
  final int depth; // Глубина дерева
  final double strokeWidth; // Толщина линии
  final Color treeColor; // Цвет дерева
  final Color leavesColor; // Цвет листьев (то есть цвет линий в "гуще")

  PythagoreanTreePainter({
    required this.leftAngle,
    required this.rightAngle,
    required this.depth,
    required this.length,
    required this.strokeWidth,
    required this.treeColor,
    required this.leavesColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Рекурсивная функция для рисования дерева
    drawTree(
      canvas, // Наш "холст"
      size.width / 2, // Начальная координата X
      size.height, // Начальная координата Y
      90, // Начальный угол (90 градусов, вниз)
      depth, // Текущая глубина
      length, // Длина корня дерева
      strokeWidth, // Толщина линии
    );
  }

  void drawTree(
    Canvas canvas,
    double x,
    double y,
    double branchAngle,
    int depth,
    double length,
    double strokeWidth,
  ) {
    if (depth == 0)
      return; // Базовый случай: если достигнута минимальная глубина, завершаем рекурсию

    final isInLeafLayer =
        depth <= 3; // Определяем, находимся ли мы в "гуще" листьев

    // Создаем объект paintLine для рисования текущей линии с нужными свойствами (цвет и толщина)
    final paintLine = Paint()
      ..color = isInLeafLayer
          ? leavesColor
          : treeColor // Разные цвета для листьев и ствола
      ..strokeWidth = strokeWidth; // Устанавливаем толщину линии

    final endX = x +
        length * cos(branchAngle * pi / 180); // Вычисляем конечную координату X
    final endY = y -
        length * sin(branchAngle * pi / 180); // Вычисляем конечную координату Y

    final newAngle1 = branchAngle - leftAngle; // Угол для левой ветки
    final newAngle2 = branchAngle + rightAngle; // Угол для правой ветки

    // Рисуем текущую линию от (x, y) до (endX, endY) с учетом цвета и толщины
    canvas.drawLine(Offset(x, y), Offset(endX, endY), paintLine);

    // Рекурсивно вызываем функции для левой и правой ветки
    drawTree(
        canvas, endX, endY, newAngle1, depth - 1, length * 0.8, strokeWidth);
    drawTree(
        canvas, endX, endY, newAngle2, depth - 1, length * 0.8, strokeWidth);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
