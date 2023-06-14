import 'package:exam_1_product_api/Product_api/Controller/Search_controller.dart';
import 'package:exam_1_product_api/Product_api/view/Bottom_bar/Bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SearchController(),),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) =>  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/":(p0) => Bottom_screen(),
          },
        ),
      ),
    ),
  );
}