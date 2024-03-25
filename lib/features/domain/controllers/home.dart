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
  //var totalVotes = 0.obs; // Observable variable to hold total votes
  final RxInt totalVotes = 0.obs; // Observable variable to store total votes

  HomeController({required this.homeRepo});

  @override
  void onInit() {
    super.onInit();
  }

  //Making a Post request
  void postData() async {
    try {
      var dio = Dio();
      var response = await dio.post(
        AppConstants.TRENDING_VIDEOS,
        data: {'input': textSearchCtrl.text},
      );

      // Handle the response
      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }

  ///Making a get request
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

  //Getting Total Votes
  void fetchVotes() async {
    try {
      final response = await Dio().get(AppConstants.VOTES);
      if (response.statusCode == 200) {
        int total = response.data['total_votes'];
        totalVotes.value = total; // Update the observable variable
      } else {
        // Handle error
      }
    } catch (e) {
      // Handle error
    }
  }

  //Getting FanBase Videos....
  void getFanBaseTrendingVideo() async {
    try {
      // Send a GET request to the trending video endpoint
      final response = await Dio().get(AppConstants.TRENDING_VIDEOS);

      // Check if the response status code is 200 (OK)
      if (response.statusCode == 200) {
        // Process the response data here
        // For example, you can extract and parse the data
        var responseData = response.data;
        // Handle the responseData as needed
      } else {
        // Handle other status codes if necessary
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle Dio errors or exceptions
      print('Error: $e');
    }
  }
}
