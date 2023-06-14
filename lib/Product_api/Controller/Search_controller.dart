import 'package:exam_1_product_api/Product_api/Model/Search_model.dart';
import 'package:exam_1_product_api/Product_api/utils/Api_helper/Search_Api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchController extends ChangeNotifier
{



  SearchModel s1 = SearchModel();

  Future<SearchModel> apiDataParsing()
  async {

    s1 = await SearchApi.searchApi.apiData();

    notifyListeners();

    return s1;
  }
}