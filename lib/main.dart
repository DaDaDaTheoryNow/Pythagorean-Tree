import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pythagorean_tree/common/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.pythagoreanTree,
      getPages: AppPages.pages,
    );
  }
}
