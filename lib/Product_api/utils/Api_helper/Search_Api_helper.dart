import 'dart:convert';

import 'package:exam_1_product_api/Product_api/Model/Search_model.dart';
import 'package:http/http.dart' as http;

class SearchApi
{

  static SearchApi searchApi = SearchApi();

  Future<SearchModel> apiData()
  async {
    String link="https://real-time-product-search.p.rapidapi.com/search?q=Nike%20shoes&country=us&language=en";

    var response= await http.get(Uri.parse(link),headers: {"X-RapidAPI-Key":"47698ab6c6msh96cfa4a2e2c96c5p133273jsn74cdc5950cdc","X-RapidAPI-Host":"real-time-product-search.p.rapidapi.com"});

    var json=jsonDecode(response.body);

    SearchModel searchModel = SearchModel.fromJson(json);

    print(searchModel);

    return searchModel;
  }
}