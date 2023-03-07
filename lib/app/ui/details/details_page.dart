import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Page (｡•́‿•̀｡)'), centerTitle: true, automaticallyImplyLeading: true),
      body: GetBuilder<DetailsController>(
          init: DetailsController(),
          builder: (_) {
            return const Center(child: Text("essa é a nossa detail page"));
          }),
      floatingActionButton: FloatingActionButton(onPressed: controller.onPressedFloatingAction),
    );
  }
}
