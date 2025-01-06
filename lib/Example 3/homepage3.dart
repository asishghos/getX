import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application/Example%203/example3controller.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  Example3controller controller = Get.put(Example3controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage3'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () => setState(
                () {
                  if (controller.favFruitList
                      .contains(controller.fruitList[index])) {
                    controller.removeFruit(controller.fruitList[index]);
                    print(controller.favFruitList);
                  } else {
                    controller.addFruit(controller.fruitList[index]);
                    print(controller.favFruitList);
                  }
                },
              ),
              title: Text(controller.fruitList[index].toString()),
              trailing: Obx(
                () => Icon(
                  Icons.favorite,
                  color: controller.favFruitList
                          .contains(controller.fruitList[index])
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
            ),
          );
        },
        itemCount: controller.fruitList.length,
      ),
    );
  }
}
