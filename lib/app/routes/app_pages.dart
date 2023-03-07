import 'package:get/get.dart';
import 'package:primeiro_app/app/ui/details/details_page.dart';
import 'package:primeiro_app/app/ui/home/home_page.dart';
// note que no import não se coloca a pasta lib, já vai direto pra pasta app

part 'app_routes.dart';

abstract class AppPages{

  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.DETAILS, page: () => DetailsPage())
  ];

}