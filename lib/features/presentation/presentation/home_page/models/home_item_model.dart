import '../../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    String? retroMicrophon,
    String? overflowMenu,
    String? id,
  }) {
    this.retroMicrophon = retroMicrophon != null
        ? Rx<String>(retroMicrophon)
        : Rx<String>(ImageConstant.imgRetroMicrophon);
    this.overflowMenu = overflowMenu != null
        ? Rx<String>(overflowMenu)
        : Rx<String>(ImageConstant.imgOverflowMenu);
    this.id = id != null ? Rx<String>(id) : Rx<String>("");
  }

  factory HomeItemModel.fromJson(Map<String, dynamic> json) {
    return HomeItemModel(
      retroMicrophon: json['retroMicrophon'] ?? '',
      overflowMenu: json['overflowMenu'] ?? '',
      id: json['id'] ?? '', // Assuming 'id' is a field in your JSON data
    );
  }

  Rx<String> retroMicrophon = Rx<String>(ImageConstant.imgRetroMicrophon);
  Rx<String> overflowMenu = Rx<String>(ImageConstant.imgOverflowMenu);
  Rx<String> id = Rx<String>("");

  get title => null;

  get artist => null;
}
