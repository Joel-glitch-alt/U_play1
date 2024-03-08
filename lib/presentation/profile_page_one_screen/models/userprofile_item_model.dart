import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userIcon,
    this.followerCount,
    this.followerText,
    this.id,
  }) {
    userIcon = userIcon ?? Rx(ImageConstant.imgUserAlt);
    followerCount = followerCount ?? Rx("32,843");
    followerText = followerText ?? Rx("Followers");
    id = id ?? Rx("");
  }

  Rx<String>? userIcon;

  Rx<String>? followerCount;

  Rx<String>? followerText;

  Rx<String>? id;
}
