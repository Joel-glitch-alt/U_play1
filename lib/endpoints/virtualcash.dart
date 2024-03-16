import 'dart:convert';
import 'package:joel_s_application10/core/app_export.dart';
import 'package:joel_s_application10/core/utils/app_constants.dart';
import 'package:joel_s_application10/data/repository/common_repos.dart';
import 'package:joel_s_application10/presentation/loading_page_screen/models/loading_page_model.dart';
import 'package:http/http.dart' as http;

class VirtualCashBalanceController extends GetxController {
  final CommonRepo commonRepo;
  VirtualCashBalanceController({required this.commonRepo});

  //
  var virtualCashTypesList = <Map<String, dynamic>>[];
  List<dynamic> VIRTUAL = [];
  //

  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  //

  //List<dynamic> _commonProductList = [];
  //List<dynamic> get commonProductList => _commonProductList

  @override
  void onInit() {
    const String VIRTUALCASHBALANCE = AppConstants.VIRTUALCASHBALANCE;
    print("[DEBUG] - Controller : ${this.runtimeType}");
    getVirtualCashBalance(VIRTUALCASHBALANCE);

    super.onInit();
  }

  //
  Future<void> getVirtualCashBalance(String url) async {
    print(url);
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print('got data');
        var parsedData = json.decode(response.body) as List<dynamic>;
        // Update the productTypesList with the fetched data
        update();
        print(parsedData);
        virtualCashTypesList = List<Map<String, dynamic>>.from(parsedData
            .map((region) => {
                  "id": region['id'].toString(),
                  "name": region['name'].toString(),
                })
            .toList());

        // You can also do additional processing if needed
        // For example: loadingPageModelObj.value = LoadingPageModel.fromJson(parsedData);
      } else {
        print('Error: ${response.statusCode}');
        throw ServerException();
      }
    } catch (error) {
      print('Unexpected error: $error');
      throw ServerException();
    }
  }

  //
  ///////making a post request..
  // Future<void> sendPostRequest() async {
  //   final String apiUrl = AppConstants.USER_REGISTER_URL;

  //   if (registerFirstName.text.isEmpty || registerEmail.text.isEmpty) {
  //     Get.snackbar('ERROR', 'Please fill  all fields');
  //     return;
  //   }

  //   Map<String, dynamic> UserModel = {
  //     'first_name': registerFirstName.text,
  //     'last_name': registerLastName.text,
  //     'username': registerUserName.text,
  //     'email': registerEmail.text,
  //     'password': registerPassword.text,
  //     'phone': registerMobileNumber.text,
  //     'role': 1
  //   };

  //   try {
  //     print(jsonEncode(UserModel));
  //     final response = await http.post(
  //       Uri.parse(apiUrl),
  //       headers: {
  //         'Content-type': 'application/json; charset=UTF-8',
  //         'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
  //       },
  //       body: jsonEncode(UserModel),
  //     );

  //     if (response.statusCode == 201) {
  //       print('Post request successful');
  //       print('Response body: ${response.body}');
  //     } else {
  //       print('Error: ${response.statusCode}');
  //       print('Response body: ${response.body}');
  //       // Get.snackbar("hello", response.body);

  //       Get.snackbar('Error', 'Failed to register. Please try again.');
  //     }
  //     // setDefaultValues();
  //   } catch (error) {
  //     print('Exception: $error');
  //     Get.snackbar('Error', 'An unexpected error occurred.');
  //   }
  // }
}
