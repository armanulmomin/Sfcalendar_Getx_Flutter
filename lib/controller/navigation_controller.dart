import 'package:get/get.dart';

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
    /*print(index);
   // try {


      //print("------");
     // print(selectedIndex);
   // }
   // catch (e) {
   //   print("error");
  //  }

     */
  }
}
