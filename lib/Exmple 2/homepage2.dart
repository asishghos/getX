import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application/Exmple%202/example2controller.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  double opacity = 0.4;
  Example2controller example2Controller = Get.put(Example2controller());
  @override
  Widget build(BuildContext context) {
    print('HomePage2 build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 2'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.deepOrange
                  .withOpacity(example2Controller.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: example2Controller.opacity.value,
              onChanged: (value) {
                example2Controller.changeOpacity(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
