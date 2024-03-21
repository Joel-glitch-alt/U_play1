import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/gift_screen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/data/data/repository/money_zone.dart';
import 'package:joel_s_application10/features/presentation/presentation/gift_screen/models/gift_zone.dart';
import 'dart:convert';

import 'package:joel_s_application10/features/presentation/presentation/gift_screen/models/money_zone.dart';

/// This class manages the state of the GiftScreen, including the
/// current giftModelObj
class MoneyZoneController extends GetxController {
  final MoneyZoneRepo moneyZoneRepo;
  // Rx<GiftModel> giftModelObj = GiftModel().obs;
  MoneyZoneController({required this.moneyZoneRepo});
  //final moneyZoneResponse = MoneyZoneResponse().obs;

  static const String moneyZoneUrl = AppConstants.MONEYZONE;

  Future<void> sendMoneyToZone(String userId, double amount) async {
    try {
      // Create a MoneyZoneRequest object with the provided data
      MoneyZoneRequest request =
          MoneyZoneRequest(userId: userId, amount: amount);

      // Convert the MoneyZoneRequest object to JSON
      String requestBody = jsonEncode(request.toJson());

      // Send a POST request to the Money Zone endpoint
      final response = await http.post(
        Uri.parse(moneyZoneUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: requestBody,
      );

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        print('Money sent successfully');
      } else {
        // Handle error response
        print('Error sending money: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Exception sending money: $e');
    }
  }
}

////////////////////////////////
