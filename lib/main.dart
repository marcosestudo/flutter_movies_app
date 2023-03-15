import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(   
    debugShowCheckedModeBanner: true,   
    initialRoute: Routes.SPLASH,
    defaultTransition: Transition.fade,   
    getPages: AppPages.pages,
  ));   
}