import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/get_started_screen/models/get_started_model.dart';

/// A controller class for the GetStartedScreen.
///
/// This class manages the state of the GetStartedScreen, including the
/// current getStartedModelObj
class GetStartedController extends GetxController {
  Rx<GetStartedModel> getStartedModelObj = GetStartedModel().obs;
}
