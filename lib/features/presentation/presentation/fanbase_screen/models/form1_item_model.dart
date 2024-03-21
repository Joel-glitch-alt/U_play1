import '../../../../core/app_export.dart';

/// This class is used in the [form1_item_widget] screen.
class Form1ItemModel {
  Form1ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
