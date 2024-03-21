import '../controller/tabs_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TabsScreen.
///
/// This class ensures that the TabsController is created when the
/// TabsScreen is first loaded.
class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabsController());
  }
}
