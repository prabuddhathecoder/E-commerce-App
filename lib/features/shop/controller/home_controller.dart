import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController get intance => Get.find();

  final carouselSliderController = CarouselSliderController();

  RxInt currentIndex = 0.obs;

  void onPageChanged(index) {
    currentIndex.value = index;
  }
}
