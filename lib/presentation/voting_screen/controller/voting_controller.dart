import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/voting_screen/models/voting_model.dart';

/// A controller class for the VotingScreen.
///
/// This class manages the state of the VotingScreen, including the
/// current votingModelObj
class VotingController extends GetxController {
  Rx<VotingModel> votingModelObj = VotingModel().obs;

  Rx<bool> vcash = false.obs;

  Rx<bool> bfv = false.obs;
}
