import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page')),
      body: Container(
        child: GetX<DetailsController>(
            init: DetailsController(),
            builder: (_) {
              return Container();
            }),
      ),
    );
  }
}
