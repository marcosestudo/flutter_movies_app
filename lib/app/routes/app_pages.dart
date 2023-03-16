import 'package:get/get.dart';
import 'package:primeiro_app/app/bindings/home_binding.dart';
import 'package:primeiro_app/app/ui/details/details_page.dart';
import 'package:primeiro_app/app/ui/home/home_page.dart';
import 'package:primeiro_app/app/ui/splash/splash_page.dart';

// note que no import não se coloca a pasta lib, já vai direto pra pasta app

part 'app_routes.dart';

abstract class AppPages{

  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashPage()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name:  Routes.DETAILS, page: () => DetailsPage()),
  ];
}