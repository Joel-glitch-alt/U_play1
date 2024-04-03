import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/register.dart';

class SubscriptionController extends GetxController {
  final RegistereRepo registereRepo;

  TextEditingController phoneSubscription = TextEditingController();

  SubscriptionController({required this.registereRepo});

  @override
  void onInit() {
    sendPostRequest();
    super.onInit();
  }

  Future<void> sendPostRequest() async {
    final String apiUrl = AppConstants.SUBSTRICTION_URL;

    if (phoneSubscription.text.isEmpty) {
      Get.snackbar('ERROR', 'Please fill field');
      return;
    }

    Map<String, dynamic> subscriptionData = {
      'subscription': phoneSubscription.text,
    };

    try {
      final dio = Dio();
      final response = await dio.post(
        apiUrl,
        data: subscriptionData,
        options: Options(
          headers: {
            'Content-type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
          },
        ),
      );

      if (response.statusCode == 201) {
        print('Post request successful');
        print('Response body: ${response.data}');
      } else {
        print('Error: ${response.statusCode}');
        print('Response body: ${response.data}');
        Get.snackbar('Error', 'Failed to register. Please try again.');
      }
    } catch (error) {
      print('Exception: $error');
      Get.snackbar('Error', 'An unexpected error occurred.');
    }
  }

  void setDefaultValues() {
    phoneSubscription.clear();
  }
}







//////////////////////////
/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/data/data/repository/register.dart';

class SubscriptionController extends GetxController {
  final RegistereRepo registereRepo;

  TextEditingController phoneSubscription = TextEditingController();

  SubscriptionController({required this.registereRepo});

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> sendPostRequest() async {
    final String apiUrl = AppConstants.SUBSTRICTION_URL;

    if (phoneSubscription.text.isEmpty) {
      Get.snackbar('ERROR', 'Please fill field');
      return;
    }

    Map<String, dynamic> subscriptionData = {
      'subscription': phoneSubscription.text,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
        },
        body: jsonEncode(subscriptionData),
      );

      if (response.statusCode == 201) {
        print('Post request successful');
        print('Response body: ${response.body}');
      } else {
        print('Error: ${response.statusCode}');
        print('Response body: ${response.body}');
        Get.snackbar('Error', 'Failed to register. Please try again.');
      }
    } catch (error) {
      print('Exception: $error');
      Get.snackbar('Error', 'An unexpected error occurred.');
    }
  }

  void setDefaultValues() {
    phoneSubscription.clear();
  }
}
*/
