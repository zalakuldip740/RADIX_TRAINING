import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getxdemo/my_controller.dart';
import 'package:getxdemo/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final MyController _controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.greenAccent),
                    child: IconButton(
                      onPressed: () {
                        _controller.increment();
                      },
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                    ),
                  ),
                  Obx(() => Text(
                        _controller.num.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.redAccent),
                    child: IconButton(
                      onPressed: () {
                        _controller.decrement();
                      },
                      icon: const Icon(Icons.remove),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 45, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Done",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blueAccent),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios_outlined),
                          color: Colors.white,
                          onPressed: () {
                            var value = _controller.num.toString();
                            Get.to(() => SecondPage(value));
                          },
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () {
            // if (Get.isDarkMode) {
            //   Get.changeTheme(ThemeData.light());
            // } else {
            //   Get.changeTheme(ThemeData.dark());
            // }
            _controller.changeTheme();
          },
          child: _controller.isDarkMode.isTrue
              ? const Icon(Icons.wb_sunny_outlined)
              : const Icon(Icons.dark_mode_outlined),
        ),
      ),
    );
  }
}
