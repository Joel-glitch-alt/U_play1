import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/data/repository/common_repos.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/models/fanbase_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/presentation/fanbase_screen/repo/repo.dart';

/// A controller class for the FanbaseScreen.
///
/// This class manages the state of the FanbaseScreen, including the
/// current fanbaseModelObj
class FanbaseController extends GetxController {
  TextEditingController searchController = TextEditingController();
  //Initializing repo...
  final FanBaseRepo fanBaseRepo;
  //constructor
  FanbaseController({required this.fanBaseRepo});
  //initialising...
  List<dynamic> _fanBaseList = [];
  List<dynamic> get fanBaseList => _fanBaseList;

  Rx<FanbaseModel> fanbaseModelObj = FanbaseModel().obs;
  //
  //final connect = GetConnect();

  @override
  void onClose() {
    const String FAN_BASE_URL = AppConstants.FAN_BASE_URL;
    getFollowers(FAN_BASE_URL);
    super.onClose();
    searchController.dispose();
  }

  //
  Future<void> getFollowers(String url) async {
    Response response = await fanBaseRepo.getFanBaseRepo();
    if (response.statusCode == 200) {
      _fanBaseList = [];
      // _fanBaseList.addAll();
      update();
    } else {}
  }
  /*USING GETX TO MAKE A GET REQUEST*/
  // Future<void> getFollowers(String url) async {
  //    response = await connect.get(url);
  //   if (statusCode == 201) {
  //     print(response.body);
  //   }
  // }
}
