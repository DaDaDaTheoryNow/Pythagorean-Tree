import 'package:get/get.dart';

import 'controller.dart';

class PythagoreanTreeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PythagoreanTreeController>(() => PythagoreanTreeController());
  }
}
