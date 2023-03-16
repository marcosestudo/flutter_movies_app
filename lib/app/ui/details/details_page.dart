import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/details_controller.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page')),
      body: GetBuilder<DetailsController>(
          init: DetailsController(),
          builder: (_) {
            return Container();
          }),
    );
  }
}
