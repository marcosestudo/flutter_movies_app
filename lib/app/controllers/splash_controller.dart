import 'package:get/get.dart';
import 'package:primeiro_app/app/routes/app_pages.dart';

class SplashController extends GetxController {
  bool visibleStrip = false;
  double animatedMargin = 0.0;

  @override
  void onReady() {
    visibleStrip = true;
    animatedMargin = 80.0;
    update();
  }
}
