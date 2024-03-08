class UserModel {
  final String phoneNumber;
  final String name;
  final String password;

  UserModel({
    required this.phoneNumber,
    required this.name,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      phoneNumber: json['phoneNumber'],
      name: json['name'],
      password: json['password'],
    );
  }

  // Convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'phoneNumber': phoneNumber,
      'name': name,
      'password': password,
    };
  }
}
