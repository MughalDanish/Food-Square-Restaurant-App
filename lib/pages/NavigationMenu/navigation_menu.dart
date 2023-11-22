import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../FoodPages/home_page.dart';

class NavigationMenuBar extends StatelessWidget {

  const NavigationMenuBar({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value = index,
          backgroundColor: Colors.transparent,
          indicatorColor: Color(0xFFFF5733),
          destinations: const [
            NavigationDestination(icon: Image(image: AssetImage('assets/images/home.png'),height: 25, width: 25), label: 'Home'),
            NavigationDestination(icon: Image(image: AssetImage('assets/images/favorite.png'),height: 25, width: 25), label: 'Favorite'),
            NavigationDestination(icon: Image(image: AssetImage('assets/images/account.png'),height: 25, width: 25), label: 'Profile'),
            NavigationDestination(icon: Image(image: AssetImage('assets/images/notification.png'),height: 25, width: 25), label: 'Notification')
          ],
        ),
      ),
      body: Obx(()=>controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const HomeFoodPage(), Container(color: Colors.red), Container(color:  Colors.blueAccent), Container(color:  Colors.deepOrange)];
}
