import 'package:get/get.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:http/http.dart' as http;
import 'package:joel_s_application10/features/data/data/repository/gift_screen.dart';
import 'dart:convert';
import 'package:joel_s_application10/features/presentation/presentation/gift_screen/models/gift_zone.dart';

class GiftZoneController extends GetxController {
  //final ApiService _apiService = Get.find<ApiService>();
  final GiftZoneRepo giftZoneRepo;
  //
  GiftZoneController({required this.giftZoneRepo});

  static const String giftZoneUrl = AppConstants.GIFTSZONE;

  final giftZoneResponse = <GiftZoneResponse>[].obs;

  Future<void> fetchGiftZoneData() async {
    try {
      final response = await http.get(Uri.parse(giftZoneUrl));

      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        List<GiftZoneResponse> giftZoneData =
            jsonData.map((data) => GiftZoneResponse.fromJson(data)).toList();

        giftZoneResponse.assignAll(giftZoneData);
      } else {
        print('Error fetching gift zone data: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Exception fetching gift zone data: $e');
    }
  }

  Future<void> postGiftZoneData(GiftZoneResponse request) async {
    try {
      final response = await http.post(
        Uri.parse(giftZoneUrl),
        body: jsonEncode(request.toJson()),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        print('Gift zone data posted successfully');
      } else {
        print('Error posting gift zone data: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Exception posting gift zone data: $e');
    }
  }
}
