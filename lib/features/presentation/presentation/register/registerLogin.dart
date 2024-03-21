// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/domain/controllers/register.dart';
import 'package:joel_s_application10/features/presentation/presentation/login_page_screen/login_page_screen.dart';
import 'package:joel_s_application10/features/config/routes/app_routes.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import 'package:joel_s_application10/features/presentation/widgets/otp_text_field.dart';

//
String? selectedValue;

class RegisterOtp extends StatelessWidget {
  List<dynamic> productTypesList = [];
  bool isChecked = false;
  String category;
  String? productTypesListId;
  List<dynamic> REGION_URL1 = [];
  String? regionalsId;

  RegisterOtp({
    Key? key,
    required this.productTypesList,
    required this.isChecked,
    required this.category,
  }) : super(key: key) {
    // Initialize productTypesList
    // productTypesList.add({"id": "1", "name": "Ariste"});
    // productTypesList.add({"id": "2", "name": "Judge"});

    // Initialize isChecked if needed
    // isChecked = false;
  }

  get requestModel => null;
  //

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(builder: (ctrl) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            //
            height: 900,
            width: double.maxFinite,
            padding: EdgeInsets.all(26),
            //
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 208, 83, 254)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'REGISTER YOUR ACCOUNT HERE',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),

                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.registerFirstName,
                  //keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'First Name',
                    hintText: 'Enter your first name',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: ctrl.registerLastName,
                  //keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'Last Name',
                    hintText: 'Enter your last name',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.registerUserName,
                  //keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'User Name',
                    hintText: 'Enter your user name',
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.registerEmail,
                  // keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.registerMobileNumber,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'Mobile Number',
                    hintText: 'Enter your mobile number',
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ctrl.registerPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        // setState(() {
                        //   isChecked = value!;
                        // });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                FormHelper.dropDownWidget(
                    context,
                    "Select Category",
                    "",
                    //selectedValue.toString(),
                    //
                    // this.productTypesListId,
                    this.productTypesList, (onChangedVal) {
                  this.productTypesListId = onChangedVal;
                  print("Selected category is:$onChangedVal");
                }, (onValidateVal) {
                  if (onValidateVal == null /*|| onValidateVal.isEmpty*/) {
                    return "Please select a category";
                  }
                  return null;
                },
                    borderColor: Theme.of(context).primaryColor,
                    borderFocusColor: Theme.of(context).primaryColor,
                    borderRadius: 10,
                    optionValue: "id",
                    optionLabel: "label"),

                SizedBox(height: 10),
                FormHelper.dropDownWidget(
                  context,
                  "Select Your Region",
                  "",
                  this.REGION_URL1,
                  (onChangedVal) {
                    this.regionalsId = onChangedVal;
                    print("Selected category is:$onChangedVal");
                  },
                  (onValidateVal) {
                    if (onValidateVal == null /*|| onValidateVal.isEmpty*/) {
                      return "Please select a category";
                    }
                    return null;
                  },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  borderRadius: 10,
                  /* optionValue: "id",
                    optionLabel: "label"*/
                ),

                SizedBox(
                  height: 10,
                ),
                OtpTextField(
                  otpController: ctrl.otpController,
                  visible: ctrl.otpShown,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text(ctrl.otpShown ? 'Register' : 'SEND OTP'),
                  onPressed: () {
                    //print(ctrl);
                    if (ctrl.otpShown) {
                      ctrl.sendPostRequest();
                    } else {
                      ctrl.sendOtp();
                    }
                    //print('pressed');
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text(' Resend OTP'),
                  onPressed: () {
                    ctrl.sendPostRequest();
                    //Get.toNamed(AppRoutes.loginPageScreen);
                    // if (ctrl.otpFieldShown) {
                    // } else {
                    //   // ctrl.sendOtp();
                    // }
                  },
                ),

                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    // print('Navigate to login screen');
                    //Get.to(LoginPageScreen());

                    // Get.toNamed(AppRoutes.loadingPageScreen);
                    Get.toNamed(AppRoutes.loginPageScreen);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Add this part to display OTP information
                // if (ctrl.otpFieldShown) ...[
                //   Text(
                //     'An OTP has been sent to your phone. Please enter it.',
                //     style: TextStyle(fontWeight: FontWeight.bold),
                //   ),
                //   SizedBox(
                //     height: 10,
                //   ),
                //   OtpTextField(
                //     otpController: ctrl.otpFieldController,
                //     onComplete: (otp) {
                //       ctrl.otpEntered = int.tryParse(otp ?? "0000");
                //     },
                //     visible: true,
                //   ),
                //   SizedBox(
                //     height: 10,
                //   ),
                //   ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       foregroundColor: Colors.white,
                //       backgroundColor: Colors.deepPurple,
                //     ),
                //     onPressed: () {
                //       //ctrl.verifyOtp();
                //     },
                //     child: Text('Verify OTP'),
                //   ),
              ],
              // ],
            ),
          ),
        ),
      );
    });
  }
}
