import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application/Counter_App_Ex1/counter_controller.dart';

class HomepageCounterApp extends StatefulWidget {
  HomepageCounterApp({super.key});

  @override
  State<HomepageCounterApp> createState() => _HomepageCounterAppState();
}

class _HomepageCounterAppState extends State<HomepageCounterApp> {
  final CounterController controller = Get.put(CounterController());
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build again");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.incrementCounter();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              controller.decrementCounter();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
