import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/presentation/get_started_subscription_screen/models/get_started_subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//

class GetStartedSubscriptionController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<GetSubscriptionModel> getStartedSubscriptionModelObj =
      GetSubscriptionModel(phone: 0593380107, artiste: 'shatta', judge: 'momo')
          .obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }

  static const String baseUrl = "http://127.0.0.1:8000/";
  static const String GetsubscriptionsEndpoint =
      "http://127.0.0.1:8000/account/subscriptions/";
  Future<void> fetchSubscriptions() async {
    try {
      final response =
          await http.post(Uri.parse('$baseUrl$GetsubscriptionsEndpoint'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);

        //
        final List<GetSubscriptionModel> subscriptions = data
            .map((jsonSubscription) =>
                GetSubscriptionModel.fromJson(jsonSubscription))
            .toList();

        getStartedSubscriptionModelObj.value = subscriptions.isNotEmpty
            ? subscriptions[0]
            : GetSubscriptionModel(
                phone: 0593380107, artiste: 'shatta', judge: 'momo');
      } else {
        print(
            'Failed to fetch subscriptions. Status code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle exception
      print('Error during fetchSubscriptions: $error');
    }
  }
  //
}
