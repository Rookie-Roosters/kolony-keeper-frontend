import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/entities.dart';

part 'authentication_login_response.freezed.dart';
part 'authentication_login_response.g.dart';

@freezed
class AuthenticationLogInResponse with _$AuthenticationLogInResponse {
  factory AuthenticationLogInResponse({
    required String token,
    required User user,
  }) = _AuthenticationLogInResponse;

  factory AuthenticationLogInResponse.fromJson(Map<String, dynamic> json) => _$AuthenticationLogInResponseFromJson(json);
}
