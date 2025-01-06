import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application/ImagePicker/imagepickercontroller.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({super.key});

  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  Imagepickercontroller imagepickercontroller =
      Get.put(Imagepickercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: imagepickercontroller.imagePath.isNotEmpty
                    ? FileImage(File(imagepickercontroller.imagePath.value))
                    : null,
              ),
            ),
            TextButton(
              onPressed: () {
                imagepickercontroller.getImage();
                print(imagepickercontroller.imagePath);
              },
              child: const Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
