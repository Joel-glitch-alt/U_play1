// import 'package:json_annotation/json_annotation.dart';

// part 'user_model.g.dart';

// @JsonSerializable()
// class UserModel {
//   @JsonKey(name: 'firstname')
//   String? firstname;

//   @JsonKey(name: 'lastname')
//   String? lastname;

//   @JsonKey(name: 'username')
//   String? username;

//   @JsonKey(name: 'email')
//   String? email;

//   @JsonKey(name: 'password')
//   String? password;

//   @JsonKey(name: 'phonenumber')
//   String? phonenumber;

//   UserModel({
//     this.firstname,
//     this.lastname,
//     this.username,
//     this.email,
//     this.password,
//     this.phonenumber,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) =>
//       _$UserModelFromJson(json);

//   Map<String, dynamic> toJson() => _$UserModelToJson(this);
// }

class UserModel {
  String? firstname;
  String? lastname;
  String? username;
  String? email;
  String? password;
  String? phone;
  int? role;

  UserModel({
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.password,
    this.phone,
    this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstname: json['firstname'],
      lastname: json['lastname'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'username': username,
      'email': email,
      'password': password,
      'phone': phone,
      'role': role,
    };
  }
}
