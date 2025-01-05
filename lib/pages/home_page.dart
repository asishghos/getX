import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            text: 'Flutter GetX',
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Get.snackbar Application
                    Get.snackbar('hello', 'Wel come to my app',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.amberAccent);
                  },
                  child: Text.rich(
                    TextSpan(text: 'Show SnackBar'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Get.defaultDialog Application
                    Get.defaultDialog(
                      title: 'Dialog',
                      middleText: 'Hello',
                      content: Text('This is a dialog box'),
                      onCancel: () {},
                      onConfirm: () {},
                    );
                  },
                  child: Text.rich(
                    TextSpan(text: 'Show Dialog'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Get.bottomSheet Application
                    Get.bottomSheet(
                      Container(
                        height: Get.height * 0.5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text('This is a bottom sheet'),
                            ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text.rich(
                    TextSpan(text: 'Show BottomSheet'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //Get.to Application
                    // Get.to(AboutPage());
                    Get.toNamed('/about');
                  },
                  child: Text.rich(
                    TextSpan(text: 'About Page'),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/contact');
                  },
                  child: Text.rich(
                    TextSpan(text: 'Contact Page'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(ThemeData.light());
                  },
                  child: Text.rich(
                    TextSpan(text: 'LIGHT MODE'),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                  child: Text.rich(
                    TextSpan(text: 'DARK MODE'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
