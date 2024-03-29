import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/presentation/tabs_screen/models/tabs_model.dart';

/// A controller class for the TabsScreen.
///
/// This class manages the state of the TabsScreen, including the
/// current tabsModelObj
class TabsController extends GetxController {
  Rx<TabsModel> tabsModelObj = TabsModel().obs;
}
