import '../../../../core/app_export.dart';
import 'home_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<HomeItemModel>> homeItemList = Rx([
    HomeItemModel(
        retroMicrophon: ImageConstant.imgRetroMicrophon.obs,
        overflowMenu: ImageConstant.imgOverflowMenu.obs),
    HomeItemModel(
        retroMicrophon: ImageConstant.imgRetroMicrophon.obs,
        overflowMenu: ImageConstant.imgOverflowMenu.obs),
    HomeItemModel(retroMicrophon: ImageConstant.imgRetroMicrophon80x40.obs)
  ]);
}
