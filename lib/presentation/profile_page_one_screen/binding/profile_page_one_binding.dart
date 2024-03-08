import '../controller/profile_page_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilePageOneScreen.
///
/// This class ensures that the ProfilePageOneController is created when the
/// ProfilePageOneScreen is first loaded.
class ProfilePageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePageOneController());
  }
}
