import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;

  void add() {
    counter ++;
    // counter.value = add.toInt();
   // Convert double to int properly
  }

  void less() {
    // counter.value = less.toInt();
    counter --;// Convert double to int properly
  }
}
