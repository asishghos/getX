import 'package:get/get.dart';

class Example2controller extends GetxController {
  RxDouble opacity = 0.4.obs;
  void changeOpacity(double value) {
    opacity.value = value;
  }
}
