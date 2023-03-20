import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Primeiro app com flutter",
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.SPLASH,
    defaultTransition: Transition.fade,   
    getPages: AppPages.pages,
  ));   
}