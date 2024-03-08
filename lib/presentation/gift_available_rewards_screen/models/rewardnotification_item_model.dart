import '../../../core/app_export.dart';

/// This class is used in the [rewardnotification_item_widget] screen.
class RewardnotificationItemModel {
  RewardnotificationItemModel({
    this.rewardText,
    this.earnedAmountText,
    this.id,
  }) {
    rewardText = rewardText ?? Rx("You Have an MZ reward");
    earnedAmountText =
        earnedAmountText ?? Rx("You have earned an Amount of GHC 132.00");
    id = id ?? Rx("");
  }

  Rx<String>? rewardText;

  Rx<String>? earnedAmountText;

  Rx<String>? id;
}
