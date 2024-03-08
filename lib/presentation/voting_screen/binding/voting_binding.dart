import '../controller/voting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VotingScreen.
///
/// This class ensures that the VotingController is created when the
/// VotingScreen is first loaded.
class VotingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VotingController());
  }
}
