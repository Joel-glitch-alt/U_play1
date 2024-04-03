import 'package:joel_s_application10/features/presentation/presentation/login_page_screen/login_page_screen.dart';

import 'controller/get_started_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/widgets/custom_elevated_button.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 809.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.gradientLightBlueAToPrimary,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 55.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup2,
                          height: 753.v,
                          width: 390.h)
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup5),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 82.v),
                      Text("A word", style: theme.textTheme.headlineMedium),
                      SizedBox(height: 87.v),
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          "Contestants",
                          style: /*CustomTextStyles.titleMediumPrimary*/
                              TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blueAccent),
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Container(
                        width: 327.h,
                        margin: EdgeInsets.only(left: 6.h, right: 5.h),
                        child: Text(
                          "We welcome you to U-play contest by subscribing you accept responsibility of you owing the full right to the song and ready to provide a quality song from a recognised studio.",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          //style: theme.textTheme.bodyMedium,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Text("Judges / Public",
                          style: CustomTextStyles.titleMediumPrimary_1),
                      SizedBox(height: 12.v),
                      Container(
                          width: 327.h,
                          margin: EdgeInsets.only(left: 6.h, right: 5.h),
                          child: Text(
                              "We welcome you to U-play contest by subscribing as a judge, you have the authority to listen to all the songs from all the regions and artistes and vote to help in getting the next music hit icon as you stand a chance of winning cash or gifts",
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 44.v),
                      CustomElevatedButton(
                        text: "Get Started",
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        isLoading: false,
                        onPressed: () {
                          onTapGetStarted();
                          print('started');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 150.adaptSize,
                  height: 150.adaptSize,
                  margin: EdgeInsets.only(top: 59.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 10.v),
                  decoration: AppDecoration.outline1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 130.v,
                      width: 86.h,
                      alignment: Alignment.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      //LoginPageScreen()
      AppRoutes.loginPageScreen,
    );
  }
}
