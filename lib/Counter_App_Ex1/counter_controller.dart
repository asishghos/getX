import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  incrementCounter() {
    counter.value++;
  }

  decrementCounter() {
    if (counter.value > 0) {
      counter.value--;
    }
  }
}
