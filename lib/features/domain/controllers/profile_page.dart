import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/profile_page.dart';

class ProfilePageController extends GetxController {
  final ProfilePageRepo profilePageRepo;

  ProfilePageController({required this.profilePageRepo});

  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  Future<void> changePassword() async {
    final String oldPassword = oldPasswordController.text;
    final String newPassword = newPasswordController.text;
    final String confirmNewPassword = confirmNewPasswordController.text;

    // Validate if new password and confirm new password match
    if (newPassword != confirmNewPassword) {
      print('New password and confirm new password do not match');
      return;
    }

    try {
      final dio = Dio();
      final response = await dio.post(
        AppConstants.PROFILE_PAGE_URL,
        data: {
          'oldPassword': oldPassword,
          'newPassword': newPassword,
        },
      );

      if (response.statusCode == 200) {
        print(response);

        print('Password changed successfully');
        update();
      } else {
        print('Failed to change password: ${response.statusCode}');
      }
    } catch (e) {
      print('Error changing password: $e');
    }
  }

  @override
  void onClose() {
    super.onClose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
  }
}







//////////
/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/profile_page.dart';

class ProfilePageController extends GetxController {
  final ProfilePageRepo profilePageRepo;

  ProfilePageController({required this.profilePageRepo});

  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  Future<void> changePassword() async {
    final String oldPassword = oldPasswordController.text;
    final String newPassword = newPasswordController.text;
    final String confirmNewPassword = confirmNewPasswordController.text;

    // Validate if new password and confirm new password match
    if (newPassword != confirmNewPassword) {
      print('New password and confirm new password do not match');
      return;
    }

    try {
      final response = await http.post(
        Uri.parse(AppConstants.PROFILE_PAGE_URL),
        body: {
          'oldPassword': oldPassword,
          'newPassword': newPassword,
        },
      );

      if (response.statusCode == 200) {
        print(response);

        print('Password changed successfully');
        update();
      } else {
        print('Failed to change password: ${response.statusCode}');
      }
    } catch (e) {
      print('Error changing password: $e');
    }
  }

  @override
  void onClose() {
    super.onClose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
  }
}


*/
