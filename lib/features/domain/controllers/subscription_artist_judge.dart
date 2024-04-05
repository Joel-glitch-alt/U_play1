import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/subscrition_artist_judge.dart';
import 'package:joel_s_application10/features/presentation/presentation/subscription_screen/models/subscription_model.dart';

class SubscriptionArtistJudgeController extends GetxController {
  final Dio _dio = Dio();

  final SubArtistJudgeRepo subArtistJudgeRepo;

  TextEditingController phoneSubscription = TextEditingController();

  SubscriptionArtistJudgeController({required this.subArtistJudgeRepo});

  @override
  void onInit() {
    super.onInit();
  }

  //
  Future<SubscriptionModel> subscribeAsJudge() async {
    return _subscribe('judge');
  }

  Future<SubscriptionModel> subscribeAsArtist() async {
    return _subscribe('artist');
  }

  Future<SubscriptionModel> _subscribe(String subType) async {
    print(subType);
    if (subType == null) {
      throw Exception('Subscription type is null');
    }

    try {
      dio.Response response = await _dio.post(
        /*'https://your-api.com/subscription'*/ AppConstants.SUBSTRICTION_URL,
        data: {
          'sub_type': subType,
        },
      );

      if (response.statusCode == 200) {
        // Parse response data to Subscription model
        SubscriptionModel subscription =
            SubscriptionModel.fromJson(response.data);
        return subscription;
      } else {
        throw Exception('Failed to subscribe');
      }
    } catch (e) {
      throw Exception('Failed to subscribe: $e');
    }
  }
}
//

// class SubscriptionController {
//   final Dio _dio = Dio(); // Initialize Dio instance

//   Future<Subscription> subscribeAsJudge() async {
//     return _subscribe('judge');
//   }

//   Future<Subscription> subscribeAsArtist() async {
//     return _subscribe('artist');
//   }

//   Future<Subscription> _subscribe(String subType) async {
//     try {
//       // Make POST request to subscription endpoint
//       Response response = await _dio.post(
//         'https://your-api.com/subscription',
//         data: {'sub_type': subType},
//       );

//       // Check if response is successful
//       if (response.statusCode == 200) {
//         // Parse response data to Subscription model
//         Subscription subscription = Subscription.fromJson(response.data);
//         return subscription;
//       } else {
//         // Handle error
//         throw Exception('Failed to subscribe');
//       }
//     } catch (e) {
//       // Handle Dio errors
//       throw Exception('Failed to subscribe: $e');
//     }
//   }
// }
