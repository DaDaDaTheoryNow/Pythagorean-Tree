import 'package:get/get.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/controller/bindings.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/view/screen/pythagorean_tree_screen.dart';

class AppPages {
  static const pythagoreanTree = "/pythagorean_tree";

  static final List<GetPage> pages = [
    GetPage(
      name: pythagoreanTree,
      page: () => const PythagoreanTreeScreen(),
      binding: PythagoreanTreeBinding(),
    ),
  ];
}
