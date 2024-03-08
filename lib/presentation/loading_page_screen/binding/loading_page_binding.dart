import '../controller/loading_page_controller.dart';
import 'package:get/get.dart';

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
