import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: GetBuilder<HomeController>(
          builder: (_) {
            return Container();
          }),
    );
  }
}
