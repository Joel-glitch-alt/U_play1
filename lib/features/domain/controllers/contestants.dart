// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';

import 'package:joel_s_application10/features/data/data/repository/contestants.dart';
import 'package:joel_s_application10/features/presentation/presentation/contestants_page/models/contestants_model.dart';
import 'package:joel_s_application10/features/presentation/presentation/contestants_page/models/userprofile1_item_model.dart';

class ContestantsController extends GetxController {
  final ContestantsRepo contestantsRepo;
  final String endpoint;

  ContestantsController({
    required this.contestantsRepo,
    required this.endpoint,
  });

  TextEditingController searchController = TextEditingController();

  Rx<ContestantsModel> contestantsModelObj = ContestantsModel().obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      final response = await Dio().get(AppConstants.VOTES);
      if (response.statusCode == 200) {
        List<Userprofile1ItemModel> items = List<Userprofile1ItemModel>.from(
            response.data.map((item) => Userprofile1ItemModel(
                  userName: item['userName'],
                  searchIcon: item[searchController.text],
                  id: item['id'],
                )));
        contestantsModelObj.value.userprofile1ItemList.value = items;
      } else {
        // Handle error
        print('Error fetching data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
