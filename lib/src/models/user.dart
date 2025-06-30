import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/src/models/user.freezed.dart';
part '../../generated/src/models/user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String phone,
    String? nickname,
    String? avatar,
    @Default(false) bool isEmailVerified,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
