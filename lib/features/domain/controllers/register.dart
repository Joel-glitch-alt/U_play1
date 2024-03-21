import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/register.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';
import 'package:joel_s_application10/features/presentation/presentation/register/model/login_user.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/presentation/presentation/register/repo/repo.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class RegisterController extends GetxController {
  final RegistereRepo registereRepo;
  RegisterController({required this.registereRepo});

  //TextFieldControllers...
  TextEditingController registerFirstName = TextEditingController();
  TextEditingController registerLastName = TextEditingController();
  TextEditingController registerUserName = TextEditingController();
  TextEditingController registerEmail = TextEditingController();
  TextEditingController registerMobileNumber = TextEditingController();
  TextEditingController registerPassword = TextEditingController();
  //
  var productTypesList = <Map<String, dynamic>>[];
  List<dynamic> REGION_URL1 = [];
  //
  OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  bool otpShown = false;
  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  //

  //List<dynamic> _commonProductList = [];
  //List<dynamic> get commonProductList => _commonProductList

  @override
  void onInit() {
    const String REGION_URL = AppConstants.REGION_URL1;
    print("[DEBUG] - Controller : ${this.runtimeType}");
    getRegionUrl(REGION_URL);
    // this.productTypesList.add({"id": 1, "label": "Artiste"});
    // this.productTypesList.add({"id": 2, "label": "Judge"});
    super.onInit();
  }

  //Making a Get Reqest....
  Future<void> getRegionUrl(String url) async {
    print(url);
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print('got data');
        var parsedData = json.decode(response.body) as List<dynamic>;
        // Update the productTypesList with the fetched data
        update();
        print(parsedData);
        productTypesList = List<Map<String, dynamic>>.from(parsedData
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

  //
  ///////making a post request..
  Future<void> sendPostRequest() async {
    final String apiUrl = AppConstants.USER_REGISTER_URL;

    if (registerFirstName.text.isEmpty || registerEmail.text.isEmpty) {
      Get.snackbar('ERROR', 'Please fill  all fields');
      return;
    }

    Map<String, dynamic> UserModel = {
      'first_name': registerFirstName.text,
      'last_name': registerLastName.text,
      'username': registerUserName.text,
      'email': registerEmail.text,
      'password': registerPassword.text,
      'phone': registerMobileNumber.text,
      'role': 1
    };

    try {
      print(jsonEncode(UserModel));
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
        },
        body: jsonEncode(UserModel),
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

  //
  sendOtp() {
    try {
      final random = Random();
      int otp = 10000 + random.nextInt(90000);
      print(otp);
      //
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

//
  setDefaultValues() {
    registerFirstName.clear();
    registerLastName.clear();
    registerUserName.clear();
    registerEmail.clear();
    registerMobileNumber.clear();
    registerPassword.clear();
  }
}
