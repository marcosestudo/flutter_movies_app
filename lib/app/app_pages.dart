import 'package:get/get.dart';
import 'package:summer_class_app/app/ui/home/home_page.dart';

part 'app_routes.dart';

abstract class AppPages{

  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding())
  ];

}