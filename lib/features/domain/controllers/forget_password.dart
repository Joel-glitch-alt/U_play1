import 'package:dio/dio.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:joel_s_application10/features/core/utils/app_constants.dart';

// class ForgotPasswordRepository {
//   static const String baseUrl = AppConstants.FORGET_PASSWORD;
//   final Dio _dio = Dio();

//   Future<void> resetPassword(String email) async {
//     final url = '$baseUrl/reset_password';

//     try {
//       final response = await _dio.post(
//         url,
//         data: {'email': email},
//       );

//       if (response.statusCode == 200) {
//         // Password reset email sent successfully
//         // You can handle the response as needed
//       } else {
//         // Handle other status codes (e.g., 404 for email not found)
//         throw Exception('Failed to reset password: ${response.statusCode}');
//       }
//     } catch (error) {
//       // Handle network errors or other exceptions
//       throw Exception('Failed to reset password: $error');
//     }
//   }
// }
//
// import 'package:dio/dio.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// import 'package:joel_s_application10/features/core/utils/app_constants.dart';

class ForgotPasswordRepository {
  static const String baseUrl = AppConstants.FORGET_PASSWORD;
  static const String baseUrll = AppConstants.UPDATE_PASSWORD;
  final Dio _dio = Dio();

  Future<void> resetPassword(String email) async {
    final url = '$baseUrl/reset_password';

    try {
      final response = await _dio.post(
        url,
        data: {'email': email},
      );

      if (response.statusCode == 200) {
      } else {
        throw Exception('Failed to reset password: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to reset password: $error');
    }
  }

  Future<void> reSetPassword(String parameter) async {
    final url = '$baseUrll/reSetPassword';

    try {
      final response = await _dio.post(
        url,
        data: {'parameter': parameter},
      );

      if (response.statusCode == 200) {
      } else {
        throw Exception(
            'Failed to call another endpoint: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to call another endpoint: $error');
    }
  }
}
