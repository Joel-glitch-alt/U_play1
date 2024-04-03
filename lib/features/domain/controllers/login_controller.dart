import 'dart:convert';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/login_repo.dart';

class LoginController extends GetxController {
  final LoginRepo loginRepo;
  final String endpoint;
  //
  var isLoading = false.obs;

  void setLoading(bool value) {
    isLoading.value = value;
  }

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

//   Future<void> login() async {
//     try {
//       // setLoading(true);
//       showDialog(
//         context: context,
//         barrierDismissible:
//             false, // Prevent dismissing the dialog by tapping outside
//         builder: (context) {
//           return Center(child: CircularProgressIndicator());
//         },
//       );

//       final dio = Dio();
//       const String LOGIN = AppConstants.USER_LOGIN;
//       String phone = phoneController.text;
//       String password = passwordController.text;

//       final data = {'phone': phone, 'password': password};

//       if (phone.isNotEmpty && password.isNotEmpty) {
//         isLoading.value = true;
//         // setLoading(true);

//         final response = await dio.post(LOGIN, data: data);
//         print(response);
//         if (response.statusCode == 200) {
//           // Login successful

//           Get.snackbar('Success', 'Login successful');
//         } else {
//           // Login failed
//           Get.snackbar('Error', 'Invalid credentials');
//         }
//       } else {
//         Get.snackbar('Error', 'Please enter a phone number!',
//             colorText: Colors.red);
//       }
//     } catch (error) {
//       print('Failed to login: $error');
//       // Handle the error appropriately
//       Get.snackbar('Error', 'Failed to login', colorText: Colors.red);
//     } finally {
//       //setLoading(false);
//       Navigator.of(context).pop();
//     }
//   }

//   //
//   // void upLoading() async {
//   //   isLoading.value = true;
//   //   await Future.delayed(Duration(seconds: 3));
//   //   isLoading.value = false;
//   // }
// }

  Future<void> login(BuildContext context) async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ));
        },
      );

      final dio = Dio();
      const String LOGIN = AppConstants.USER_LOGIN;
      String phone = phoneController.text;
      String password = passwordController.text;

      final data = {'phone': phone, 'password': password};

      if (phone.isNotEmpty && password.isNotEmpty) {
        final response = await dio.post(LOGIN, data: data);
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
    } finally {
      // Dismiss the loading dialog
      Navigator.of(context).pop();
    }
  }
}
