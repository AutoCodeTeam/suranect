// class User {
//   final String name;
//   final String username;
//   final String password;
//   final String photo;
//   final String email;
//   final bool emailVerify;
//   final int emailCode;
//
//   User({
//     required this.name,
//     required this.username,
//     required this.password,
//     required this.photo,
//     required this.email,
//     required this.emailVerify,
//     required this.emailCode,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       name: json['name'],
//       username: json['username'],
//       password: json['password'],
//       photo: json['photo'],
//       email: json['email'],
//       emailVerify: json['emailVerify'],
//       emailCode: json['emailCode'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'username': username,
//       'password': password,
//       'photo': photo,
//       'email': email,
//       'emailVerify': emailVerify,
//       'emailCode': emailCode,
//     };
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/laporan/domain/entities/laporan.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "CreatedAt" ) required String createdAt,
    @JsonKey(name: "UpdatedAt") required String updatedAt,
    @JsonKey(name: "DeletedAt") String? deletedAt,
    @JsonKey(name: "Name") required String name,
    @JsonKey(name: "Username") required String username,
    @JsonKey(name: "Password") required String password,
    @JsonKey(name: "Photo") required String photo,
    @JsonKey(name: "Email") required String email,
    @JsonKey(name: "EmailVerify") required bool emailVerify,
    @JsonKey(name: "EmailCode") required int emailCode,
    @JsonKey(name: "Laporans") List<Laporan>? laporans,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
