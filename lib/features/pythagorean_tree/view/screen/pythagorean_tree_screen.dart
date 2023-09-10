import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/controller/controller.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/view/widgets/circular_particles.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/view/widgets/gradient_button.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/view/widgets/info_dialog.dart';
import 'package:pythagorean_tree/features/pythagorean_tree/view/widgets/pythagorean_tree.dart';

class PythagoreanTreeScreen extends GetView<PythagoreanTreeController> {
  const PythagoreanTreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Дерево Пифогора",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () => Get.dialog(PythagoreanTreeInfoDialog(
                controller: controller,
              )),
              icon: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          CircularParticles(),
          Obx(
            () => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (controller.state.pythagoreanTreeModel.treeColor == null)
                    CircularProgressIndicator()
                  else
                    PythagoreanTree(
                      leftAngle:
                          controller.state.pythagoreanTreeModel.leftAngle!,
                      rightAngle:
                          controller.state.pythagoreanTreeModel.rightAngle!,
                      length: controller.state.pythagoreanTreeModel.length!,
                      depth: controller.state.pythagoreanTreeModel.depth!,
                      strokeWidth:
                          controller.state.pythagoreanTreeModel.strokeWidth!,
                      treeColor:
                          controller.state.pythagoreanTreeModel.treeColor!,
                      leavesColor:
                          controller.state.pythagoreanTreeModel.leavesColor!,
                    ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: GradientButton(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.pink,
                          Colors.green,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(18),
                      onPressed: () => controller
                          .generateNewTree(MediaQuery.of(context).size.width),
                      child: Text(
                        "Сгенерировать",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
