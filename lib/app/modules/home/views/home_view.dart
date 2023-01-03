import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => ElevatedButton.icon(
            onPressed: controller.isLoading.value ? (){
              print("is loading ON");
            } : controller.onSubmit,
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0)),
            icon: controller.isLoading.value
                ? Container(
              width: 24,
              height: 24,
              padding: const EdgeInsets.all(2.0),
              child: const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            )
                : const Icon(Icons.feedback),
            label: const Text('SUBMIT'),
          )),
      ),
    );
  }
}
