import '../../../../core/app_export.dart';
import 'home_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<HomeItemModel>> homeItemList = Rx([]);

  // Constructor
  HomeModel(List<Map<String, dynamic>> jsonData) {
    List<HomeItemModel> items =
        jsonData.map((item) => HomeItemModel.fromJson(item)).toList();
    homeItemList.value = items;
  }
}
