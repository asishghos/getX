import 'package:get/get.dart';

class Example3controller extends GetxController {
  RxList<String> fruitList = ['Apple', 'Banana', 'Orange', 'Mango'].obs;
  RxList favFruitList = [].obs;
  addFruit(String fruit) {
    favFruitList.add(fruit);
  }

  removeFruit(String fruit) {
    favFruitList.remove(fruit);
  }
}
