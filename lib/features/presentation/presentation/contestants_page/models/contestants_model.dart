import '../../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [contestants_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ContestantsModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userName: "Name Artist".obs,
        searchIcon: ImageConstant.imgSearchBlueGray100.obs),
    Userprofile1ItemModel(
        userName: "Name Artist".obs,
        searchIcon: ImageConstant.imgSearchAmber500.obs),
    Userprofile1ItemModel(
        userName: "Name Artist".obs,
        searchIcon: ImageConstant.imgSearchBlueGray100.obs),
    Userprofile1ItemModel(
        userName: "Name Artist".obs,
        searchIcon: ImageConstant.imgSearchBlueGray100.obs)
  ]);
}
