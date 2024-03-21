import 'dart:convert';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';
import 'package:joel_s_application10/features/data/data/repository/register.dart';
import 'package:joel_s_application10/features/data/data/repository/voting.dart';
import 'package:joel_s_application10/features/presentation/presentation/loading_page_screen/models/loading_page_model.dart';
import 'package:http/http.dart' as http;

class VotingsController extends GetxController {
  var vcash = false.obs;
  var bfv = false.obs;
  final VotingRepo votingRepo;
  VotingsController({required this.votingRepo});

  RxInt vcashVotes = 0.obs;
  RxInt bfvVotes = 0.obs;
  // Rx<int> totalVotes = 0.obs;

  Rx<LoadingPageModel> loadingPageModelObj = LoadingPageModel().obs;

  @override
  void onInit() {
    const String VOTING = AppConstants.VOTINGS;
    print("[DEBUG] - Controller : ${this.runtimeType}");

    voteForVcash();
    // voteForBfvcash();

    super.onInit();
  }

  //Methods to post a vote for Vcash
  Future<void> voteForVcash() async {
    try {
      // Perform API call to post vote for Vcash
      // Assuming your API returns the updated number of Vcash votes
      final response = await http.post(
        Uri.parse(AppConstants.VOTINGS),
        // Include any required parameters for the vote
      );

      if (response.statusCode == 200) {
        // If the vote is successfully posted, update the Vcash votes count
        vcashVotes.value = jsonDecode(response.body)['vcashVotes'];
      } else {
        // Handle error cases
        throw Exception('Failed to vote for Vcash');
      }
    } catch (error) {
      print('Error voting for Vcash: $error');
    }

    //Methods to vote for BFV
    Future<void> voteForBfvcash() async {
      try {
        final response = await http.post(
          Uri.parse('YOUR_VCASH_VOTE_ENDPOINT'),
        );

        if (response.statusCode == 200) {
          vcashVotes.value = jsonDecode(response.body)['vcashVotes'];
        } else {
          throw Exception('Failed to vote for Vcash');
        }
      } catch (error) {
        print('Error voting for Vcash: $error');
      }
    }
  }
}

//
  // Future<void> getVoting() async {
  //   try {
  //     final response = await http.get(Uri.parse(AppConstants.VOTES));

  //     if (response.statusCode == 200) {
  //       // If the server returns a 200 OK response, parse the response body
  //       // and update the totalVotes variable
  //       totalVotes.value = jsonDecode(response.body)['totalVotes'];
  //     } else {
  //       // If the server returns an error response, throw an error
  //       throw Exception('Failed to fetch total votes');
  //     }
  //   } catch (error) {
  //     // Handle any errors that occur during the process
  //     print('Error fetching total votes: $error');
  //   }
  // }

  //
  // Future<void> getVoting(String url) async {
  //   //print(url);
  //   try {
  //     http.Response response = await http.get(Uri.parse(url));
  //     if (response.statusCode == 200) {
  //       print('got data');
  //       var parsedData = json.decode(response.body) as List<dynamic>;
  //       // Update the productTypesList with the fetched data
  //       update();
  //       print(parsedData);
  //       voteTypesList = List<Map<String, dynamic>>.from(parsedData
  //           .map((region) => {
  //                 "id": region['id'].toString(),
  //                 "name": region['name'].toString(),
  //               })
  //           .toList());

  //       // You can also do additional processing if needed
  //       // For example: loadingPageModelObj.value = LoadingPageModel.fromJson(parsedData);
  //     } else {
  //       print('Error: ${response.statusCode}');
  //       throw ServerException();
  //     }
  //   } catch (error) {
  //     print('Unexpected error: $error');
  //     throw ServerException();
  //   }
  // }

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

