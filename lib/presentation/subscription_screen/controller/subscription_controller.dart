import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/presentation/subscription_screen/models/subscription_model.dart';
import 'package:http/http.dart';

/// A controller class for the SubscriptionScreen.
///
/// This class manages the state of the SubscriptionScreen, including the
/// current subscriptionModelObj
class SubscriptionController extends GetxController {
  Rx<SubscriptionModel> subscriptionModelObj = SubscriptionModel().obs;
}
