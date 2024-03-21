import '../controller/get_started_introduction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GetStartedIntroductionScreen.
///
/// This class ensures that the GetStartedIntroductionController is created when the
/// GetStartedIntroductionScreen is first loaded.
class GetStartedIntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedIntroductionController());
  }
}
