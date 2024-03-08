import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/gift_screen/models/gift_model.dart';

/// A controller class for the GiftScreen.
///
/// This class manages the state of the GiftScreen, including the
/// current giftModelObj
class GiftController extends GetxController {
  Rx<GiftModel> giftModelObj = GiftModel().obs;
}
