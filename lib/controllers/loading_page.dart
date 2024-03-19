import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/loading_page_screen/models/loading_page_model.dart';

/// A controller class for the LoadingPageScreen.
///
/// This class manages the state of the LoadingPageScreen, including the
/// current loadingPageModelObj
class LoadingPageController extends GetxController {
  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.getStartedScreen,
      );
    });
  }
}
