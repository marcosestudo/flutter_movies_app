import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Filmes nacionais'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: controller.onPressed,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: GetBuilder<HomeController>(builder: (_) {
        // List<String> verticalCardPagerTitles = List.filled(controller.movieList.length, "");
        return controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : VerticalCardPager(
                initialPage: 1,
                // titles: const <String>["","","","",""],
                // TODO: transformar titles numa lista com tamnaho dinâmico
                titles: controller.verticalCardPagerTitles,
                images: controller.images,
                onSelectedItem: controller.onSelectedItem,
              );
      }),
    );
  }
}
