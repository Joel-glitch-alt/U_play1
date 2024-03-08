import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/contestants_page/models/contestants_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ContestantsPage.
///
/// This class manages the state of the ContestantsPage, including the
/// current contestantsModelObj
class ContestantsController extends GetxController {
  ContestantsController(this.contestantsModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<ContestantsModel> contestantsModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
