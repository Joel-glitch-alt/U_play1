import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/home.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/models/home_item_model.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/models/home_model.dart';

class HomeController extends GetxController {
  final HomeRepo homeRepo;
  var homeModelObj = HomeModel([]).obs;
  TextEditingController textSearchCtrl = TextEditingController();
  HomeController({required this.homeRepo});

  @override
  void onClose() {
    super.onClose();
  }

  void fetchData() async {
    try {
      final response = await Dio().get(AppConstants.FETCH_TOP_MEDIA);
      if (response.statusCode == 200) {
        List<HomeItemModel> items = List<HomeItemModel>.from(
            response.data.map((item) => HomeItemModel.fromJson(item)));

        // Filter items based on the search query
        String searchQuery = textSearchCtrl.text.toLowerCase();
        if (searchQuery.isNotEmpty) {
          items = items
              .where((item) =>
                  item.title.toLowerCase().contains(searchQuery) ||
                  item.artist.toLowerCase().contains(searchQuery))
              .toList();
        }

        homeModelObj.value.homeItemList.value = items;
      } else {
        // Handle error
      }
    } catch (e) {
      // Handle error
    }
  }
}
