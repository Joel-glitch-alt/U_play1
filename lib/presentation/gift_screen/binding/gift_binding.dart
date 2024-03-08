import '../controller/gift_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GiftScreen.
///
/// This class ensures that the GiftController is created when the
/// GiftScreen is first loaded.
class GiftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiftController());
  }
}
