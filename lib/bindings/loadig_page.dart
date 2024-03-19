import 'package:get/get.dart';
import 'package:joel_s_application10/controllers/loading_page.dart';

/// A binding class for the LoadingPageScreen.
///
/// This class ensures that the LoadingPageController is created when the
/// LoadingPageScreen is first loaded.
class LoadingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingPageController());
  }
}
