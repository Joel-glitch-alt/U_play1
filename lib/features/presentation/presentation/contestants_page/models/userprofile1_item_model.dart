import '../../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userName,
    this.searchIcon,
    this.id,
  }) {
    userName = userName ?? Rx("Name Artist");
    searchIcon = searchIcon ?? Rx(ImageConstant.imgSearchBlueGray100);
    id = id ?? Rx("");
  }

  Rx<String>? userName;

  Rx<String>? searchIcon;

  Rx<String>? id;
}
