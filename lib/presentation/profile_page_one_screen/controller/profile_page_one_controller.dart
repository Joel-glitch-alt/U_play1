import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/profile_page_one_screen/models/profile_page_one_model.dart';

/// A controller class for the ProfilePageOneScreen.
///
/// This class manages the state of the ProfilePageOneScreen, including the
/// current profilePageOneModelObj
class ProfilePageOneController extends GetxController {
  Rx<ProfilePageOneModel> profilePageOneModelObj = ProfilePageOneModel().obs;
}
