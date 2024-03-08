import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [profile_page_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfilePageOneModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userIcon: ImageConstant.imgUserAlt.obs,
        followerCount: "32,843".obs,
        followerText: "Followers".obs),
    UserprofileItemModel(
        userIcon: ImageConstant.imgSignal.obs,
        followerCount: "203".obs,
        followerText: "Collections".obs),
    UserprofileItemModel(
        userIcon: ImageConstant.imgThumbsUpPurpleA200.obs,
        followerCount: "1234K".obs,
        followerText: "Likes".obs),
    UserprofileItemModel(
        userIcon: ImageConstant.imgAward.obs,
        followerCount: "16".obs,
        followerText: "Rewards".obs)
  ]);
}
