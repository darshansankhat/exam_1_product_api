import 'package:exam_1_product_api/Product_api/view/Bottom_bar/Bottom_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Bottom_screen extends StatefulWidget {
  const Bottom_screen({Key? key}) : super(key: key);

  @override
  State<Bottom_screen> createState() => _Bottom_screenState();
}

class _Bottom_screenState extends State<Bottom_screen> {

  BottomController controller = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(
      () =>  Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: controller.screenList[controller.i.value],
        bottomNavigationBar:   BottomNavigationBar(
            currentIndex: controller.i.value,
            onTap: (value) {
              controller.changeScreen(value);
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 30,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.messenger_outline,size: 25,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border,size: 30,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,size: 30,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded,size: 30,),label: ""),
            ],
          ),
      ),
    ),);
  }
}
