// import 'package:joel_s_application10/core/app_export.dart';
// import 'package:joel_s_application10/core/utils/app_constants.dart';
// import 'package:joel_s_application10/data/repository/sign_up_page.dart';
// import 'package:joel_s_application10/data/repository/sign_up_page.dart';
// import 'package:joel_s_application10/presentation/signup_page_screen/models/signup_page_model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// //class SignupPageController extends GetxController {
// //  SignUpPageRepo signUpPageRepo;
// // SignUpPageRepo({required this.signUpPageRepo});

// // TextEditingController idController = TextEditingController();

// // TextEditingController passwordController = TextEditingController();

// // TextEditingController confirmpasswordController = TextEditingController();

// // Rx<SignupPageModel> signupPageModelObj =
// //     SignupPageModel(id: '', password: '', confirmPassword: '').obs;

// // @override
// // void onClose() {
// //   super.onClose();
// //   idController.dispose();
// //   passwordController.dispose();
// //   confirmpasswordController.dispose();
// // }
// //

// //   void fetchData() async {
// //     var url = Uri.parse(AppConstants.SUBSTRICTION_URL);

// //     try {
// //       var response = await http.get(url);

// //       if (response.statusCode == 200) {
// //         var jsonData = jsonDecode(response.body);
// //         signupPageModelObj.value = SignupPageModel.fromJson(jsonData);
// //       } else {
// //         print('Failed to fetch data. Status code: ${response.statusCode}');
// //       }
// //     } catch (error) {
// //       print('Error during fetchData: $error');
// //     }
// //   }
// // }
// //////

// class SignupPageController extends GetxController {
//   final SignupPageController signupPageController;
//   SignupPageController({required this.signupPageController});
//   //
//   TextEditingController idController = TextEditingController();

//   TextEditingController passwordController = TextEditingController();

//   TextEditingController confirmpasswordController = TextEditingController();

//   Rx<SignupPageModel> signupPageModelObj =
//       SignupPageModel(id: '', password: '', confirmPassword: '').obs;

//   //
//   @override
//   void onClose() {
//     super.onClose();
//     idController.dispose();
//     passwordController.dispose();
//     confirmpasswordController.dispose();
//   }

//   var productTypesList = <Map<String, dynamic>>[];
//   List<dynamic> REGION_URL1 = [];

//   @override
//   void onInit() {
//     const String REGION_URL = AppConstants.REGION_URL1;
//     print("[DEBUG] - Controller : ${this.runtimeType}");
//     //getRegionUrl(REGION_URL);
//     super.onInit();
//   }

//   //Making a Get Reqest....

//   //
//   ///////making a post request..
//   Future<void> sendPostRequest() async {
//     final String apiUrl = AppConstants.USER_REGISTER_URL;

//     if (registerFirstName.text.isEmpty || registerEmail.text.isEmpty) {
//       Get.snackbar('ERROR', 'Please fill  all fields');
//       return;
//     }

//     // Map<String, dynamic> UserModel = {
//     //   'first_name': registerFirstName.text,
//     //   'last_name': registerLastName.text,
//     //   'username': registerUserName.text,
//     //   'email': registerEmail.text,
//     //   'password': registerPassword.text,
//     //   'phone': registerMobileNumber.text,
//     //   'role': 1
//     // };

//     try {
//       print(jsonEncode(UserModel));
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {
//           'Content-type': 'application/json; charset=UTF-8',
//           'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
//         },
//         body: jsonEncode(UserModel),
//       );

//       if (response.statusCode == 201) {
//         print('Post request successful');
//         print('Response body: ${response.body}');
//       } else {
//         print('Error: ${response.statusCode}');
//         print('Response body: ${response.body}');
//         // Get.snackbar("hello", response.body);

//         Get.snackbar('Error', 'Failed to register. Please try again.');
//       }
//       // setDefaultValues();
//     } catch (error) {
//       print('Exception: $error');
//       Get.snackbar('Error', 'An unexpected error occurred.');
//     }
//   }
// }

//////////////////////////////
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/presentation/signup_page_screen/models/signup_page_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignupPageController extends GetxController {
  //
  TextEditingController idController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignupPageModel> signupPageModelObj =
      SignupPageModel(id: '', password: '', confirmPassword: '').obs;

  @override
  void onClose() {
    super.onClose();
    idController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
  //

  void fetchData() async {
    var url = Uri.parse("http://127.0.0.1:8000/account/users/");

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        signupPageModelObj.value = SignupPageModel.fromJson(jsonData);
      } else {
        print('Failed to fetch data. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error during fetchData: $error');
    }
  }
}
