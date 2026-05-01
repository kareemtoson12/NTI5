// Karim Toson || kareemtoson1@gmail.com || Fri May 01 2026 09:44:01

class UserModel {
  final String name;
  final String email;
  final String password;
  final List<dynamic> favorites;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.favorites,
  });

  //to json

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'favorites': favorites,
    };
  }

  //from json
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
      password: json['password'],
      favorites: json['favorites'],
    );
  }
}
