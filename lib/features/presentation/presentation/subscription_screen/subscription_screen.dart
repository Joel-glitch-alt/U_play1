// import 'package:joel_s_application10/controllers/subscription.dart';

// import 'package:flutter/material.dart';
// import 'package:joel_s_application10/core/app_export.dart';
// import 'package:joel_s_application10/widgets/custom_elevated_button.dart';
// import 'package:joel_s_application10/widgets/custom_outlined_button.dart';

// // ignore_for_file: must_be_immutable
// class SubscriptionScreen extends GetWidget<SubscriptionController> {
//   const SubscriptionScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     // return GetBuilder<SubscriptionController>(builder: (ctrl) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.red,

//         ///appTheme.blueGray100.withOpacity(0.03),
//         body: Container(
//           width: double.maxFinite,
//           //padding: EdgeInsets.symmetric(horizontal: 20.h),
//           child: _buildFrameFiftyFour(),
//         ),
//       ),
//     );
//     // });
//   }

//   /// Section Widget
//   Widget _buildFrameFiftyFour() {
//     return Container(
//       decoration: AppDecoration.fillGray.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder5,
//       ),
//       child: Card(
//         clipBehavior: Clip.antiAlias,
//         elevation: 0,
//         margin: EdgeInsets.all(0),
//         color: theme.colorScheme.errorContainer,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadiusStyle.roundedBorder10,
//         ),
//         child: Container(
//           height: 500.v,
//           width: 350.h,
//           decoration: AppDecoration.fillErrorContainer.copyWith(
//               //borderRadius: BorderRadiusStyle.roundedBorder10,
//               ),
//           child: Stack(
//             alignment: Alignment.topCenter,
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   decoration:
//                       AppDecoration.gradientLightblueA700ToPrimary.copyWith(
//                           // borderRadius: BorderRadiusStyle.roundedBorder10,
//                           ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       SizedBox(height: 6.v),
//                       //CustomImageView(
//                       // imagePath: ImageConstant.imgGroup2,
//                       // height: 405.v,
//                       // width: 350.h,
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     left: 6.h,
//                     right: 10.h,
//                     bottom: 406.v,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(bottom: 3.v),
//                         // child: Text(
//                         //"lbl_12_25_am".tr,
//                         //style: CustomTextStyles.bodySmallInterWhiteA700,
//                         // ),
//                       ),
//                       // CustomImageView(
//                       //   imagePath: ImageConstant.imgSettings,
//                       //   height: 6.v,
//                       //   width: 52.h,
//                       // ),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25.h),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       CustomOutlinedButton(
//                         text: "msg_enter_phone_number".tr,
//                         buttonStyle: CustomButtonStyles.outlineGrayTL20,
//                         buttonTextStyle: CustomTextStyles.bodyLargeBluegray100,
//                       ),
//                       SizedBox(height: 15.v),
//                       CustomElevatedButton(
//                         text: "lbl_an_artiste".tr,
//                         buttonTextStyle: CustomTextStyles.titleMediumGray50,
//                       ),
//                       SizedBox(height: 15.v),
//                       CustomElevatedButton(
//                         text: "lbl_a_judge".tr,
//                         buttonTextStyle: CustomTextStyles.titleMediumGray50,
//                       ),
//                       SizedBox(height: 17.v),
//                       SizedBox(
//                         width: 299.h,
//                         child: RichText(
//                           text: TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: "lbl_note".tr,
//                                 style: CustomTextStyles.titleMediumfffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "lbl_subscribing".tr,
//                                 style: CustomTextStyles.bodyLargefffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "lbl_as".tr,
//                                 style: CustomTextStyles.bodyLargefffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "lbl_artiste".tr,
//                                 style: CustomTextStyles.titleMediumfffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "msg_cost_ghc_70_00_and".tr,
//                                 style: CustomTextStyles.bodyLargefffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "lbl_judge".tr,
//                                 style: CustomTextStyles.titleMediumfffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "msg_cost_ghc_10_00".tr,
//                                 style: CustomTextStyles.bodyLargefffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "\n".tr,
//                                 style: CustomTextStyles.bodySmallfffbf9fa,
//                               ),
//                               TextSpan(
//                                 text: "msg_in_order_to_participate".tr,
//                                 style: CustomTextStyles.bodyLargefffbf9fa,
//                               ),
//                             ],
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/domain/controllers/subscription.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:get/get.dart';
import 'package:joel_s_application10/features/domain/controllers/subscription_artist_judge.dart';

///import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  final TextEditingController? textEditingController;
  final void Function(String) onTextChanged;
  final void Function() onArtistsPressed;
  final void Function() onJudgePressed;

  SubscriptionScreen({
    Key? key,
    this.textEditingController,
    required this.onTextChanged,
    required this.onArtistsPressed,
    required this.onJudgePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SubscriptionArtistJudgeController>(builder: (ctrl) {
      return SafeArea(
        child: Scaffold(
          // backgroundColor: appTheme.blueGray100.withOpacity(0.03),
          backgroundColor: const Color.fromARGB(255, 30, 137, 224),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 30, 137, 224),
            leading: IconButton(
              onPressed: () {
                //Get.back();
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  // child: TextField(
                  //   controller: ctrl.phoneSubscription,
                  //   onChanged: onTextChanged,
                  //   decoration: InputDecoration(
                  //     hintText: 'Enter Phone  Number',
                  //     hintStyle: TextStyle(color: Colors.white),
                  //     fillColor: Colors.white,
                  //     border: OutlineInputBorder(
                  //       // borderSide: BorderSide(color: Colors.white),
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  // ),
                ),
              ),
              // SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      print('Judge tapped');
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        ctrl.subscribeAsArtist();
                        // print('Artist');
                      },
                      // onJudgePressed,
                      child: Text(
                        'Artist',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      // Add your navigation logic here
                      // For example:
                      // Get.to(YourPage());
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        print('Judge tapped');
                      },
                      child: Text(
                        'Judge',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 160,
                ),
                child: Text(
                  'NOTE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    'Subscribing as Artist cost GHc 70.00.'
                    ' And a judge cost GHc 10,00. You  will receive a USSD prompt after this action.',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'In order to participate in this contest you need to subscribe. Thank You',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  ///
  onTapTxtProfilePage() {
    Get.toNamed(
      AppRoutes.profilePageOneScreen,
    );
  }
  // void onTapTxtSubscribe() {
  //   // Navigate to the SubscriptionScreen
  //   Get.to(SubscriptionScreen(
  //     onTextChanged: (String text) {
  //       // Implement your logic for text changed
  //     },
  //     onArtistsPressed: () {
  //       // Implement your logic for artists pressed
  //     },
  //     onJudgePressed: () {
  //       // Implement your logic for judge pressed
  //     },
  //   ));
  // }
}
