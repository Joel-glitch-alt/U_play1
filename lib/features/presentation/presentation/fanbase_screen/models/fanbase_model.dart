import '../../../../core/app_export.dart';
import 'form_item_model.dart';
import 'form1_item_model.dart';

/// This class defines the variables used in the [fanbase_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FanbaseModel {
  Rx<List<FormItemModel>> formItemList = Rx([
    FormItemModel(
        retroMicrophon: ImageConstant.imgRetroMicrophon.obs,
        overflowMenu: ImageConstant.imgOverflowMenu.obs),
    FormItemModel(
        retroMicrophon: ImageConstant.imgRetroMicrophon.obs,
        overflowMenu: ImageConstant.imgOverflowMenu.obs),
    FormItemModel(retroMicrophon: ImageConstant.imgRetroMicrophon80x40.obs)
  ]);

  Rx<List<Form1ItemModel>> form1ItemList =
      Rx(List.generate(3, (index) => Form1ItemModel()));
}
