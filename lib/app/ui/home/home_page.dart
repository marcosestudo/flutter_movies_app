import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:primeiro_app/app/controllers/home_controller.dart';
// note que no terceiro import não se coloca a pasta lib, já vai direto pra pasta app

// extends StatelessWidget trocado por extends GetView
// GetView é um StatelessWidget com o controlador já instanciado
class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Home Page (｡•́‿•̀｡)'),
          centerTitle: true,
          // actions são os botões que ficam no canto superior direito da appbar
          actions: [
            IconButton(
                onPressed: controller.reloadData,
                icon: const Icon(Icons.refresh))
          ]),
      body: GetBuilder<HomeController>(builder: (_) {
        return Center(
            child: controller.isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _.onPressed,
                    child: const Text("Counter Page")));
      }),
    );
  }
}
