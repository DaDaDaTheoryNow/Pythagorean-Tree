import 'package:get/get.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/data/models/pythagorean_tree.dart';

class PythagoreanTreeState {
  final Rx<PythagoreanTreeModel> _pythagoreanTreeModel = PythagoreanTreeModel(
    leftAngle: null,
    rightAngle: null,
    length: null,
    depth: null,
    strokeWidth: null,
    treeColor: null,
    leavesColor: null,
  ).obs;
  PythagoreanTreeModel get pythagoreanTreeModel => _pythagoreanTreeModel.value;
  set pythagoreanTreeModel(value) => _pythagoreanTreeModel.value = value;
}
