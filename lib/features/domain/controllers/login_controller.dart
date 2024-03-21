import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/login_repo.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final LoginRepo loginRepo;
  final String endpoint;

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginController({required this.loginRepo, required this.endpoint});

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();

    print("[DEBUG] - Controller : ${this.runtimeType}");
    //getRegionUrl(REGION_URL);
  }

  Future<void> login() async {
    try {
      const String LOGIN = AppConstants.USER_LOGIN;
      String phone = phoneController.text;
      String password = passwordController.text;

      final body = jsonEncode({'phone': phone, 'password': password});

      if (phone.isNotEmpty && password.isNotEmpty) {
        http.Response response = await http.post(Uri.parse(LOGIN), body: body);
        print(response);
        if (response.statusCode == 200) {
          // Login successful
          Get.snackbar('Success', 'Login successful');
        } else {
          // Login failed
          Get.snackbar('Error', 'Invalid credentials');
        }
      } else {
        Get.snackbar('Error', 'Please enter a phone number!',
            colorText: Colors.red);
      }
    } catch (error) {
      print('Failed to login: $error');
      // Handle the error appropriately
      Get.snackbar('Error', 'Failed to login', colorText: Colors.red);
    }
  }
}
// class LoginController extends GetxController {
//   final LoginRepo loginRepo;
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   LoginController({required this.loginRepo}); //, this.data
//   String token = '';

//   Future<void> login() async {
//     try {
//       String phone = phoneController.text;
//       String password = passwordController.text;

//       final body = jsonEncode({'phone': phone, 'password': password});

//       if (phone.isNotEmpty && password.isNotEmpty) {
//         http.Response response = await loginRepo.loginRepo(body);
//       } else {
//         Get.snackbar('Error', 'Please enter a phone number!',
//             colorText: Colors.red);
//       }
//     } catch (error) {
//       print('Failed to login: $error');
//       // Handle the error appropriately
//       Get.snackbar('Error', 'Failed to login', colorText: Colors.red);
//     }
//   }
// }

/////
///import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:joel_s_application10/core/app_export.dart';
// import 'package:joel_s_application10/core/utils/app_constants.dart';
// import 'package:joel_s_application10/data/repository/login_repo.dart';
// import 'package:http/http.dart' as http;

// class LoginController extends GetxController {
//   final LoginRepo loginRepo;
//   final String endpoint;

//   TextEditingController phoneController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   LoginController({required this.loginRepo, required this.endpoint});

//   Future<void> login() async {
//     try {
//       String phone = phoneController.text;
//       String password = passwordController.text;

//       final body = jsonEncode({'phone': phone, 'password': password});

//       if (phone.isNotEmpty && password.isNotEmpty) {
//         http.Response response = await http.post(Uri.parse(endpoint), body: body);
//         if (response.statusCode == 200) {
//           // Login successful
//           Get.snackbar('Success', 'Login successful');
//         } else {
//           // Login failed
//           Get.snackbar('Error', 'Invalid credentials');
//         }
//       } else {
//         Get.snackbar('Error', 'Please enter a phone number!', colorText: Colors.red);
//       }
//     } catch (error) {
//       print('Failed to login: $error');
//       // Handle the error appropriately
//       Get.snackbar('Error', 'Failed to login', colorText: Colors.red);
//     }
//   }
// }

