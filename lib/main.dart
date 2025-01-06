import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application/Counter_App_Ex1/homepage.dart';
import 'package:getx_application/Example%203/homepage3.dart';
import 'package:getx_application/Exmple%202/homepage2.dart';
import 'package:getx_application/ImagePicker/homepage4.dart';
import 'package:getx_application/components/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // getPages: allPages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage4(),
    );
  }
}
