import 'package:flutter/material.dart'; 
import 'package:get/get.dart'; 

void main() {
  runApp(GetMaterialApp(   
    debugShowCheckedModeBanner: true,   
    initialRoute: '/',
    defaultTransition: Transition.fade,   
    getPages: MyRoutes.routes,
  ));   
}