import '../controller/fanbase_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FanbaseScreen.
///
/// This class ensures that the FanbaseController is created when the
/// FanbaseScreen is first loaded.
class FanbaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FanbaseController());
  }
}
