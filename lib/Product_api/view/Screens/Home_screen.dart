import 'package:exam_1_product_api/Product_api/Controller/Search_controller.dart';
import 'package:exam_1_product_api/Product_api/Model/Search_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  SearchController? providerF;
  SearchController? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<SearchController>(context, listen: false);
    providerT = Provider.of<SearchController>(context, listen: true);

    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade50,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sort,
                size: 30,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Find Shoes",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                providerT!.s1.data!.isEmpty?CircularProgressIndicator():
                SizedBox(
                  height: 71.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: 30.h),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 30.h,
                        width: 40.w,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black38, blurRadius: 2)
                            ]),
                        child: Column(
                          children: [
                            //price
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(fontSize: 18),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border,
                                      color: Colors.black38,
                                      size: 30,
                                    ))
                              ],
                            ),
                            //image
                            Text(
                                "${providerT!.s1.data![index].productId}"),
                          ],
                        ),
                      );
                    },
                    itemCount: providerT!.s1.data!.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
