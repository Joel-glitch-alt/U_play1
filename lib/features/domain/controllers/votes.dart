import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/errors/exceptions.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/register.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';

class VotesController extends GetxController {
  final RegistereRepo registereRepo;

  VotesController({required this.registereRepo});

  var votesTypesList = <Map<String, dynamic>>[];
  List<dynamic> VOTING = [];
  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  @override
  void onInit() {
    super.onInit();
    const String VOTES = AppConstants.VOTES;
    print("[DEBUG] - Controller : ${this.runtimeType}");
    getVotes(VOTES);
  }

  Future<void> getVotes(String url) async {
    try {
      final dio = Dio();
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        var parsedData = response.data as List<dynamic>;
        // Assuming the response contains vote objects with a 'count' field
        // int totalVotes = parsedData.fold(0, (sum, vote) => sum + vote['count']);
        // return totalVotes;
      } else {
        print('Error: ${response.statusCode}');
        throw ServerException(); // You may want to provide more specific error handling here
      }
    } catch (error) {
      print('Unexpected error: $error');
      throw ServerException(); // You may want to provide more specific error handling here
    }
  }

  ///
  /*
      if (response.statusCode == 200) {
        print('got data');
        var parsedData = response.data as List<dynamic>;
        update();
        print(parsedData);
        votesTypesList = List<Map<String, dynamic>>.from(parsedData
            .map((region) => {
                  "id": region['id'].toString(),
                  "name": region['name'].toString(),
                })
            .toList());
      } else {
        print('Error: ${response.statusCode}');
        throw ServerException();
      }
    } catch (error) {
      print('Unexpected error: $error');
      throw ServerException();
    }
  }
  */
}







/*
import 'dart:convert';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/register.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/presentation/presentation/register/repo/repo.dart';

class VotesController extends GetxController {
  final RegistereRepo registereRepo;
  VotesController({required this.registereRepo});

  //
  var votesTypesList = <Map<String, dynamic>>[];
  List<dynamic> VOTING = [];
  //

  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  //

  //List<dynamic> _commonProductList = [];
  //List<dynamic> get commonProductList => _commonProductList

  @override
  void onInit() {
    const String VOTES = AppConstants.VOTES;
    print("[DEBUG] - Controller : ${this.runtimeType}");
    getVotes(VOTES);

    super.onInit();
  }

  //
  Future<void> getVotes(String url) async {
    print(url);
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print('got data');
        var parsedData = json.decode(response.body) as List<dynamic>;
        // Update the productTypesList with the fetched data
        update();
        print(parsedData);
        votesTypesList = List<Map<String, dynamic>>.from(parsedData
            .map((region) => {
                  "id": region['id'].toString(),
                  "name": region['name'].toString(),
                })
            .toList());

        // You can also do additional processing if needed
        // For example: loadingPageModelObj.value = LoadingPageModel.fromJson(parsedData);
      } else {
        print('Error: ${response.statusCode}');
        throw ServerException();
      }
    } catch (error) {
      print('Unexpected error: $error');
      throw ServerException();
    }
  }
}  
  */
