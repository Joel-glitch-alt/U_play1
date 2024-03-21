// import 'package:joel_s_application10/core/app_export.dart';
// import 'package:joel_s_application10/presentation/signup_page_screen/models/signup_page_model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class SignupPageController extends GetxController {
//   //
//   TextEditingController idController = TextEditingController();

//   TextEditingController passwordController = TextEditingController();

//   TextEditingController confirmpasswordController = TextEditingController();

//   Rx<SignupPageModel> signupPageModelObj =
//       SignupPageModel(id: '', password: '', confirmPassword: '').obs;

//   @override
//   void onClose() {
//     super.onClose();
//     idController.dispose();
//     passwordController.dispose();
//     confirmpasswordController.dispose();
//   }
//   //

//   void fetchData() async {
//     var url = Uri.parse("http://127.0.0.1:8000/account/users/");

//     try {
//       var response = await http.get(url);

//       if (response.statusCode == 200) {
//         var jsonData = jsonDecode(response.body);
//         signupPageModelObj.value = SignupPageModel.fromJson(jsonData);
//       } else {
//         print('Failed to fetch data. Status code: ${response.statusCode}');
//       }
//     } catch (error) {
//       print('Error during fetchData: $error');
//     }
//   }
// }
