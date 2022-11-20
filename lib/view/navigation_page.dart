import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sfcalendar_getx_flutter/view/person_one.dart';
import 'package:sfcalendar_getx_flutter/view/person_two.dart';

import '../controller/navigation_controller.dart';
import 'home.dart';
class NavigationPage extends StatelessWidget {
  NavigationController navigationController = Get.put(NavigationController());
   NavigationPage({Key? key}) : super(key: key);
  final screens = [PersonOne(), Home(), PersonTwo()];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Obx(
            () => IndexedStack(
          index: navigationController.selectedIndex.value,
          // index: 0,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            navigationController.changeIndex(index);
          },
          currentIndex: navigationController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person 1",
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person 2",
                backgroundColor: Colors.purple),
          ],
        ),
      ),
    );
  }
}
