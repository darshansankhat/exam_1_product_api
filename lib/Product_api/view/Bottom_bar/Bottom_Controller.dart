import 'package:exam_1_product_api/Product_api/view/Screens/Bag_screen.dart';
import 'package:exam_1_product_api/Product_api/view/Screens/Favorite_screen.dart';
import 'package:exam_1_product_api/Product_api/view/Screens/Home_screen.dart';
import 'package:exam_1_product_api/Product_api/view/Screens/Message_screen.dart';
import 'package:exam_1_product_api/Product_api/view/Screens/Person_screen.dart';
import 'package:get/get.dart';

class BottomController extends GetxController
{
  RxInt i = 0.obs;

  RxList screenList=[
    Home_screen(),
    Message_screen(),
    Favorite_screen(),
    Bag_screen(),
    Person_screen(),
  ].obs;

  void changeScreen(int value)
  {
    i.value=value;
  }
}