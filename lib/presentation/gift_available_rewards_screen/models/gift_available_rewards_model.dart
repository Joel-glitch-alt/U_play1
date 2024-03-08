import '../../../core/app_export.dart';
import 'rewardnotification_item_model.dart';

/// This class defines the variables used in the [gift_available_rewards_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GiftAvailableRewardsModel {
  Rx<List<RewardnotificationItemModel>> rewardnotificationItemList = Rx([
    RewardnotificationItemModel(
        rewardText: "You Have an MZ reward".obs,
        earnedAmountText: "You have earned an Amount of GHC 132.00".obs),
    RewardnotificationItemModel(
        rewardText: "You Have a GZ reward".obs,
        earnedAmountText:
            "You have can redeem an electric Iron with 600 pts".obs),
    RewardnotificationItemModel(
        rewardText: "You Have a GZ reward".obs,
        earnedAmountText:
            "You have can redeem an Rice Cooker with 900 pts".obs),
    RewardnotificationItemModel(
        rewardText: "You Have a GZ reward".obs,
        earnedAmountText: "You have can redeem a TV with 1800 pts".obs),
    RewardnotificationItemModel(
        rewardText: "You Have a GZ reward".obs,
        earnedAmountText:
            "You have can redeem an Refrigerator with 4500 pts".obs)
  ]);
}
