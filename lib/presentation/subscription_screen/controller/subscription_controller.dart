import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/subscription_screen/models/subscription_model.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/data/repository/common_repos.dart';

/// A controller class for the SubscriptionScreen.
///
/// This class manages the state of the SubscriptionScreen, including the
/// current subscriptionModelObj
class SubscriptionController extends GetxController {
  ///Rx<SubscriptionModel> subscriptionModelObj = SubscriptionModel().obs;

  final CommonRepo commonRepo;
  SubscriptionController({required this.commonRepo});
  //
  TextEditingController phoneSubscrition = TextEditingController();
  //TextEditingController registerLastName = TextEditingController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  //

  Future<void> sendPostRequest() async {
    final String apiUrl = AppConstants.SUBSTRICTION_URL;

    if (phoneSubscrition.text.isEmpty) {
      Get.snackbar('ERROR', 'Please fill field');
      return;
    }
    Map<String, dynamic> SubscriptionModel = {
      'subscription': phoneSubscrition.text,
      //'last_name': registerLastName.text,
    };
    try {
      print(jsonEncode(SubscriptionModel));
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
        },
        body: jsonEncode(SubscriptionModel),
      );

      if (response.statusCode == 201) {
        print('Post request successful');
        print('Response body: ${response.body}');
      } else {
        print('Error: ${response.statusCode}');
        print('Response body: ${response.body}');
        // Get.snackbar("hello", response.body);

        Get.snackbar('Error', 'Failed to register. Please try again.');
      }
      // setDefaultValues();
    } catch (error) {
      print('Exception: $error');
      Get.snackbar('Error', 'An unexpected error occurred.');
    }
  }

  setDefaultValues() {
    phoneSubscrition.clear();
  }
}




  

   

    
  


//


