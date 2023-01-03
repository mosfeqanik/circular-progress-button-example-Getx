import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  @override
  void onInit() {
    increment();
    super.onInit();
  }

  var isLoading = false.obs;

  void onSubmit() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    print("Submit button pressed");
    isLoading.value = false;
  }

  void increment() => count.value++;
}
