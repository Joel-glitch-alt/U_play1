import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/presentation/login_page_screen/login_page_screen.dart';
import 'package:joel_s_application10/presentation/register/controller/register.dart';
import 'package:joel_s_application10/widgets/otp_text_field.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';

class RegisterOtp extends StatelessWidget {
  final bool isChecked = false;
  const RegisterOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (ctrl) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 900,
            width: double.maxFinite,
            padding: EdgeInsets.all(26),
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
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: ctrl.nameController,
                  keyboardType: TextInputType.phone,
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
                  controller: ctrl.phoneNumberController,
                  keyboardType: TextInputType.phone,
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
                  controller: ctrl.phoneNumberController,
                  keyboardType: TextInputType.phone,
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
                  controller: ctrl.phoneNumberController,
                  keyboardType: TextInputType.phone,
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
                  controller: ctrl.phoneNumberController,
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
                  controller: ctrl.passwordController,
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text('SEND OTP'),
                  onPressed: () {
                    ctrl.addUser();
                    // if (ctrl.otpFieldShown) {
                    // } else {
                    //   // ctrl.sendOtp();
                    // }
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
                    ctrl.addUser();
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
                    print('Navigate to login screen');
                    Get.to(LoginPageScreen());
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
