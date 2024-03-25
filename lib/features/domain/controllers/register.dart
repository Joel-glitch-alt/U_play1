import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/register.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';

class RegisterController extends GetxController {
  final Dio dioInstance = Dio();
  final RegistereRepo registereRepo;

  final TextEditingController registerFirstName = TextEditingController();
  final TextEditingController registerLastName = TextEditingController();
  final TextEditingController registerUserName = TextEditingController();
  final TextEditingController registerEmail = TextEditingController();
  final TextEditingController registerMobileNumber = TextEditingController();
  final TextEditingController registerPassword = TextEditingController();
  final OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  final Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;
  bool otpShown = false;
  RegisterController({required this.registereRepo});

  @override
  void onInit() {
    super.onInit();
    // Fetching region URLs
    getRegionUrl(AppConstants.REGION_URL1);
  }

  Future<void> getRegionUrl(String url) async {
    try {
      final response = await dioInstance.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> parsedData = response.data;
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Unexpected error: $error');
    }
  }

  Future<void> sendPostRequest() async {
    final String apiUrl = AppConstants.USER_REGISTER_URL;
    if (registerFirstName.text.isEmpty || registerEmail.text.isEmpty) {
      Get.snackbar('ERROR', 'Please fill all fields');
      return;
    }

    final Map<String, dynamic> userModel = {
      'first_name': registerFirstName.text,
      'last_name': registerLastName.text,
      'username': registerUserName.text,
      'email': registerEmail.text,
      'password': registerPassword.text,
      'phone': registerMobileNumber.text,
      'role': 1
    };

    try {
      final response = await dioInstance.post(
        apiUrl,
        data: userModel,
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

  void sendOtp() {
    try {
      final random = Random();
      final int otp = 10000 + random.nextInt(90000);
      print(otp);
      if (otp != null) {
        otpShown = true;
        Get.snackbar('Success', 'OTP sent successfully!');
      } else {
        Get.snackbar('Error', 'OTP not sent!');
      }
    } finally {
      update();
    }
  }

  void setDefaultValues() {
    registerFirstName.clear();
    registerLastName.clear();
    registerUserName.clear();
    registerEmail.clear();
    registerMobileNumber.clear();
    registerPassword.clear();
  }
}




/*
import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/data/data/repository/register.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';

class RegisterController extends GetxController {
  final dio.Dio dioInstance = dio.Dio();
  final RegistereRepo registereRepo;

  final TextEditingController registerFirstName = TextEditingController();
  final TextEditingController registerLastName = TextEditingController();
  final TextEditingController registerUserName = TextEditingController();
  final TextEditingController registerEmail = TextEditingController();
  final TextEditingController registerMobileNumber = TextEditingController();
  final TextEditingController registerPassword = TextEditingController();
  final OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  final Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;
  bool otpShown = false;
  RegisterController({required this.registereRepo});

  @override
  void onInit() {
    super.onInit();
    // Fetching region URLs
    getRegionUrl(AppConstants.REGION_URL1);
  }

  Future<void> getRegionUrl(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<dynamic> parsedData = json.decode(response.body);
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Unexpected error: $error');
    }
  }

  Future<void> sendPostRequest() async {
    final String apiUrl = AppConstants.USER_REGISTER_URL;
    if (registerFirstName.text.isEmpty || registerEmail.text.isEmpty) {
      Get.snackbar('ERROR', 'Please fill all fields');
      return;
    }

    final Map<String, dynamic> userModel = {
      'first_name': registerFirstName.text,
      'last_name': registerLastName.text,
      'username': registerUserName.text,
      'email': registerEmail.text,
      'password': registerPassword.text,
      'phone': registerMobileNumber.text,
      'role': 1
    };

    try {
      final response = await dioInstance.post(
        apiUrl,
        data: userModel,
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

  void sendOtp() {
    try {
      final random = Random();
      final int otp = 10000 + random.nextInt(90000);
      print(otp);
      if (otp != null) {
        otpShown = true;
        Get.snackbar('Success', 'OTP sent successfully!');
      } else {
        Get.snackbar('Error', 'OTP not sent!');
      }
    } finally {
      update();
    }
  }

  void setDefaultValues() {
    registerFirstName.clear();
    registerLastName.clear();
    registerUserName.clear();
    registerEmail.clear();
    registerMobileNumber.clear();
    registerPassword.clear();
  }
}

*/







