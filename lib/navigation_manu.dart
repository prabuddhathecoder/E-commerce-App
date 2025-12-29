import 'package:ecommerce/features/authentication/screens/shop/home/home_screen.dart';
import 'package:ecommerce/features/authentication/screens/shop/store/store_screen.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavagationController());
    bool dark = FunctionHelper.isDarkMode(context);
    return Scaffold(
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? AppColors.dark : AppColors.light,
          indicatorColor: dark
              ? AppColors.light.withValues(alpha: 0.1)
              : AppColors.black.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          animationDuration: const Duration(
            microseconds: 300,
          ),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile")
          ],
        ),
      ),
    );
  }
}

class NavagationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> screen = [
    const HomeScreen(),
    const StoreScreen(),
    const Center(child: Text("Wishlist")),
    const Center(child: Text("Profile")),
  ];
}
