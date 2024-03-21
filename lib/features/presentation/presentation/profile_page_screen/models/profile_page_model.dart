/// This class defines the variables used in the [profile_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
//class ProfilePageModel {}
class ProfilePageModel {
  final String oldPassword;
  final String newPassword;
  final String confirmPassword;

  ProfilePageModel({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  factory ProfilePageModel.fromJson(Map<String, dynamic> json) {
    return ProfilePageModel(
      oldPassword: json['oldPassword'],
      newPassword: json['newPassword'],
      confirmPassword: json['confirmPassword'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'oldPassword': oldPassword,
      'newPassword': newPassword,
      'confirmPassword': confirmPassword,
    };
  }
}
