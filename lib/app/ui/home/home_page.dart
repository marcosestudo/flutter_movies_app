import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';


class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: GetBuilder<HomeController>(
          builder: (_) {
            return controller.isLoading! ? const Center(child: CircularProgressIndicator()) :
                VerticalCardPager(
                  intilaPage: 1,
                  titles: const <String>["","","",""],
                  images: controller.images,
                  onSelectedItem: controller.onSelectedItem,
                );
          }),
    );
  }
}
