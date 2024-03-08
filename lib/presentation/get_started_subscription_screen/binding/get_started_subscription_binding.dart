import '../controller/get_started_subscription_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GetStartedSubscriptionScreen.
///
/// This class ensures that the GetStartedSubscriptionController is created when the
/// GetStartedSubscriptionScreen is first loaded.
class GetStartedSubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedSubscriptionController());
  }
}
