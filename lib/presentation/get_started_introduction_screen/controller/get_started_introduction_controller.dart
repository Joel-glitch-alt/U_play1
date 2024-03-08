import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/get_started_introduction_screen/models/get_started_introduction_model.dart';

/// A controller class for the GetStartedIntroductionScreen.
///
/// This class manages the state of the GetStartedIntroductionScreen, including the
/// current getStartedIntroductionModelObj
class GetStartedIntroductionController extends GetxController {
  Rx<GetStartedIntroductionModel> getStartedIntroductionModelObj =
      GetStartedIntroductionModel().obs;
}
