import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/presentation/gift_available_rewards_screen/models/gift_available_rewards_model.dart';

/// A controller class for the GiftAvailableRewardsScreen.
///
/// This class manages the state of the GiftAvailableRewardsScreen, including the
/// current giftAvailableRewardsModelObj
class GiftAvailableRewardsController extends GetxController {
  Rx<GiftAvailableRewardsModel> giftAvailableRewardsModelObj =
      GiftAvailableRewardsModel().obs;
}
