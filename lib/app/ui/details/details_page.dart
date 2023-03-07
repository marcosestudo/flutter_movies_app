import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Page (｡•́‿•̀｡)'),
          centerTitle: true,
          automaticallyImplyLeading: true),
      body: GetBuilder<DetailsController>(
          // init: DetailsController(), foi pro arquivo details_binding
          // details_controller deve ser iniciado antes da página para ser visto pelo wrap Getx
          // por isso saiu daqui e foi pra binding
          builder: (_) {
            return Center(child: GetX<DetailsController>(
              builder: (_) {
                return Text("${controller.number}", style: const TextStyle(fontSize: 22));
              },
            ));
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: controller.onPressedFloatingAction),
    );
  }
}
