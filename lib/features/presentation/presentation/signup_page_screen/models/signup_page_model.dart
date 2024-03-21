/// This class defines the variables used in the [signup_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
//class SignupPageModel {}

class SignupPageModel {
  String id;
  String password;
  String confirmPassword;

  SignupPageModel({
    required this.id,
    required this.password,
    required this.confirmPassword,
  });

  // Factory constructor
  factory SignupPageModel.fromJson(Map<String, dynamic> json) {
    return SignupPageModel(
      id: json['id'] ?? '',
      password: json['password'] ?? '',
      confirmPassword: json['confirmPassword'] ?? '',
    );
  }

  // Convert SignupPageModel instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }
}
