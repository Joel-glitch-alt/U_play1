import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/data/apiClient/api_client.dart';

class subRepo extends GetxService {
  final ApiClient apiClient;
  subRepo({required this.apiClient});

  Future<Response> getSubRepo() async {
    return await apiClient.getData(AppConstants.SUBSTRICTION_URL);
  }
}
// import 'package:flutter/material.dart';

// class SubscriptionScreenController extends GetxController {
//   final TextEditingController textEditingController = TextEditingController();

//   String _textFieldValue = '';

//   String get textFieldValue => _textFieldValue;

//   void setTextFieldValue(String value) {
//     _textFieldValue = value;
//     //GetxController();
//   }

//   void handleArtistsButtonPressed() {
//     // Logic for handling the "Artists" button press
//     print('Artists button pressed');
//   }

//   void handleJudgeButtonPressed() {
//     // Logic for handling the "Judge" button press
//     print('Judge button pressed');
//   }

//   @override
//   void dispose() {
//     textEditingController.dispose();
//     super.dispose();
//   }
// }
