import 'package:flutter/material.dart'; 
import 'package:get/get.dart'; 

void main() {
  runApp(GetMaterialApp(   
    debugShowCheckedModeBanner: false,   
    initialRoute: '/',   
    theme: appThemeData,   
    defaultTransition: Transition.fade,   
    getPages: MyRoutes.routes,   
    home: HomePage(),   
  ));   
}