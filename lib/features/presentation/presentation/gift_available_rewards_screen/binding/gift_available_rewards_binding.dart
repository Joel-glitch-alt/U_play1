import '../controller/gift_available_rewards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GiftAvailableRewardsScreen.
///
/// This class ensures that the GiftAvailableRewardsController is created when the
/// GiftAvailableRewardsScreen is first loaded.
class GiftAvailableRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiftAvailableRewardsController());
  }
}
