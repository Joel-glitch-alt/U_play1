import 'dart:math';

import 'package:flutter/material.dart';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/register/model/login_user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:otp_text_field_v2/otp_field_v2.dart';

class LoginController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UserModel user = UserModel(phoneNumber: '', name: '', password: '');

  OtpFieldControllerV2 otpFieldController = OtpFieldControllerV2();
  bool otpFieldShown = false;
  int? otpSend;
  int? otpEntered;

  @override
  void onInit() {
    super.onInit();
  }

  void updateUserData() {
    user = UserModel(
      phoneNumber: phoneNumberController.text,
      name: nameController.text,
      password: passwordController.text,
    );
  }

  void clearData() {
    phoneNumberController.clear();
    nameController.clear();
    passwordController.clear();
    user = UserModel(phoneNumber: '', name: '', password: '');
  }

  Future<void> fetchOtp() async {
    var url = Uri.parse("http://127.0.0.1:8000/account/users");

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        otpSend = jsonData['otp'];
        Get.snackbar('Success', 'OTP fetched: $otpSend',
            colorText: Colors.green);
      } else {
        Get.snackbar('Error', 'Failed to fetch OTP', colorText: Colors.red);
      }
    } catch (error) {
      print('Error during fetchOtp: $error');
    }
  }

  void addUser() async {
    var url = Uri.parse("http://127.0.0.1:8000/account/users/");

    try {
      if (phoneNumberController.text.isEmpty || nameController.text.isEmpty) {
        Get.snackbar(
          'Error',
          'Please fill in the fields',
          colorText: Colors.red,
          messageText: Text(
            'Please fill in the fields',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
        print(url);
      } else {
        // Fetch OTP from the backend
        await fetchOtp();

        Get.snackbar(
          'Info',
          'OTP has been fetched',
          colorText: Colors.blue,
          messageText: Text(
            'An OTP has been fetched. Please enter it.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
        nameController.clear();
        phoneNumberController.clear();
        passwordController.clear();
      }

      var response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'phoneNumber': phoneNumberController.text,
          'name': nameController.text,
          'password': passwordController.text,
        }),
      );

      if (response.statusCode == 201) {
        print('User added successfully');
      } else {
        print('Failed to add user. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error during addUser: $error');
    }
  }
}
