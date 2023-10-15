class User {
  final String name;
  final String username;
  final String password;
  final String photo;
  final String email;
  final bool emailVerify;
  final int emailCode;

  User({
    required this.name,
    required this.username,
    required this.password,
    required this.photo,
    required this.email,
    required this.emailVerify,
    required this.emailCode,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      username: json['username'],
      password: json['password'],
      photo: json['photo'],
      email: json['email'],
      emailVerify: json['emailVerify'],
      emailCode: json['emailCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'username': username,
      'password': password,
      'photo': photo,
      'email': email,
      'emailVerify': emailVerify,
      'emailCode': emailCode,
    };
  }
}
