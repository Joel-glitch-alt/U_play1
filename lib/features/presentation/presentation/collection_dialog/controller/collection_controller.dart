import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/presentation/collection_dialog/models/collection_model.dart';

/// A controller class for the CollectionDialog.
///
/// This class manages the state of the CollectionDialog, including the
/// current collectionModelObj
class CollectionController extends GetxController {
  Rx<CollectionModel> collectionModelObj = CollectionModel().obs;
}
