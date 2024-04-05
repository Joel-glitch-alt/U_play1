import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/home.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/models/home_item_model.dart';
import 'package:joel_s_application10/features/presentation/presentation/home_page/models/home_model.dart';

class HomeController extends GetxController {
  final HomeRepo homeRepo;
  final HomeRepo fanbaseRepo;
  final HomeRepo regionRepo;
  var homeModelObj = HomeModel([]).obs;
  TextEditingController textSearchCtrl = TextEditingController();
  //var totalVotes = 0.obs; // Observable variable to hold total votes
  final RxInt totalVotes = 0.obs; // Observable variable to store total votes
  final RxInt fanBase = 0.obs;

  HomeController({
    required this.homeRepo,
    required this.fanbaseRepo,
    required this.regionRepo,
  });
  //List<dynamic> parseddData = [];
  List<dynamic> artists = [];
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
  /*void fetchVotes() async {
    try {
      final response = await Dio().get(AppConstants.VOTES);
      if (response.statusCode == 200) {
        int total = response.data['total_votes'];
        totalVotes.value = total;
      } else {
        // Handle error
      }
    } catch (e) {
      // Handle error
    }
  }
  */

  //Getting FanBase Videos....
  void getFanBaseTrendingVideo() async {
    try {
      // Send a GET request to the trending video endpoint
      final response = await Dio().get(AppConstants.TRENDING_VIDEOS);

      if (response.statusCode == 200) {
        // For example, you can extract and parse the data
        var responseData = response.data;
        fanBase.value = responseData;
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

  //
  //Getting Regions by Artist
  Future<List<String>> getArtistsFromRegionUrl(String url) async {
    try {
      final dio = Dio(); // Creating an instance of Dio
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final responseData = response.data; // Extracting the response data
        // Assuming responseData is a list of objects and each object has an 'artist' field
        List<String> artists =
            responseData.map<String>((item) => item['artiste_name']).toList();
        print(artists);
        return artists; // Returning the list of artists
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Unexpected error: $error');
    }
  }
}
