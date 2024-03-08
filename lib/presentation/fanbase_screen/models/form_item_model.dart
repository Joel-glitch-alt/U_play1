import '../../../core/app_export.dart';

/// This class is used in the [form_item_widget] screen.
class FormItemModel {
  FormItemModel({
    this.retroMicrophon,
    this.overflowMenu,
    this.id,
  }) {
    retroMicrophon = retroMicrophon ?? Rx(ImageConstant.imgRetroMicrophon);
    overflowMenu = overflowMenu ?? Rx(ImageConstant.imgOverflowMenu);
    id = id ?? Rx("");
  }

  Rx<String>? retroMicrophon;

  Rx<String>? overflowMenu;

  Rx<String>? id;
}
