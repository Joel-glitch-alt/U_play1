class UserModell {
  final String uid;
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final RoleModel role;
  final List<dynamic> followers;
  final List<dynamic> favourites;
  final int votes;
  final int points;
  final int virtualCash;
  final int mzoneCash;

  UserModell({
    required this.uid,
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.role,
    required this.followers,
    required this.favourites,
    required this.votes,
    required this.points,
    required this.virtualCash,
    required this.mzoneCash,
  });

  factory UserModell.fromJson(Map<String, dynamic> json) {
    return UserModell(
      uid: json['uid'],
      id: json['id'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      role: RoleModel.fromJson(json['role']),
      followers: json['followers'],
      favourites: json['favourites'],
      votes: json['votes'],
      points: json['points'],
      virtualCash: json['virtual_cash'],
      mzoneCash: json['mzone_cash'],
    );
  }
}

class RoleModel {
  final int id;
  final String uid;
  final String name;

  RoleModel({
    required this.id,
    required this.uid,
    required this.name,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      id: json['id'],
      uid: json['uid'],
      name: json['name'],
    );
  }
}
